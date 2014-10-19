class Challenge < ActiveRecord::Base
  belongs_to :group
  has_many :activities

 def generate_calendar(current_user_id)
    challenge_frequency = self.frequency.downcase
    start = self.created_at
    activities_array = []

    self.activities.each do |activity|
      if activity.user_id == current_user_id
        activities_array << activity
      end
    end

    case challenge_frequency
    when 'daily'
      completion_array = Array.new(duration, false)
      for i in (0..duration)
        start_criteria = start + i.day
        end_criteria = start + (i+1).day
        activities_array.each do |activity|
          if activity.created_at.between?(start_criteria, end_criteria)
            completion_array[i] = true
          end
        end
      end
    when 'weekly'
      completion_array = Array.new(duration/7, false)
      for i in(0..duration).step(7)
        start_criteria = start + i.day
        end_criteria = start + (i+7).day
        if activity.created_at.between?(start_criteria, end_criteria)
          completion_array[i] = true
        end
      end
    end
    return completion_array
  end
end

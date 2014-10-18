app.controller('WorkoutController', ['$scope', 'Challenge', 'Group', 'Activity', function($scope, Challenge, Group, Activity){
  $scope.frequencyCheckboxes = false;

  $scope.frequencySelect = function() {
    if ($scope.frequency == "custom") {
      $scope.frequencyCheckboxes = true;
    }
  }

}]);

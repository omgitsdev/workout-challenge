app.factory('Activity', function($resource) {
  return $resource(
    '/activity/:id',
    {id: '@id'},
    {update: {method: 'PATCH'}
  });
});

app.factory('Group', function($resource) {
  return $resource(
    '/group/:id',
    {id: '@id'},
    {update: {method: 'PATCH'}
  });
});

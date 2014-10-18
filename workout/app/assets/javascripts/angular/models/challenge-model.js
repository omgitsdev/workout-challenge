app.factory('Challenge', function($resource) {
  return $resource(
    '/challenges/:id',
    {id: '@id'},
    {update: {method: 'PATCH'}
  });
});

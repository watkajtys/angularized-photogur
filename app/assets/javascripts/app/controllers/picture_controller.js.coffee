@photogur.controller("PictureController", ($scope, $routeParams, Picture) ->
   console.log($routeParams.id)

   $scope.picture = Picture.get($routeParams, $.noop, (data) ->
      #there was an error
      $scope.errorMessage = "could not retrieve"

   )
)
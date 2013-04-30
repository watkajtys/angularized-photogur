@photogur.controller("PicturesController", ($scope, Picture) ->
   
   # $scope.newPicture = {}

   $scope.pictures = Picture.query(
      (data) ->
         console.log('success!')
      , 
      (data) ->
         alert("Could not retrieve post data")
   )

   $scope.showTitle = ->
      alert $scope.newPicture.title
)
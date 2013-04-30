@photogur.controller("PicturesController", ($scope, Picture) ->

   $scope.pictures = Picture.query(
      (data) ->
         console.log('success!')
      , 
      (data) ->
         alert("Could not retrieve post data")
   )

   $scope.savePicture = ->
      console.log "The picture is ", $scope.newPicture
      Picture.save($scope.newPicture, 
         (data) -> 
            console.log("success")
         ,(response) -> 
            $scope.errors = response.data.errors
      )

)
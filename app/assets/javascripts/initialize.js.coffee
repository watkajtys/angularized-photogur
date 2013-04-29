@photogur = angular.module('photogur', [])

@photogur.config(($routeProvider, $locationProvider) ->
  $locationProvider.html5Mode(true)

  $routeProvider
    .when("/", {template: "pictures/index", controller: "PicturesController"})
    .when("/pictures", {template: "pictures/index", controller: "PicturesController"})
    .when("/pictures/:id", {template: "pictures/show", controller: "PictureController"})
    .when("/pictures/:id/edit", {template: "pictures/edit", controller: "PictureController"})
    .when("/pictures/new", {template: "pictures/index", controller: "PicturesController"})
    .otherwise({template: "Page not found by Angular. You done fucked up."})
)
HangmanApp = angular.module "HangmanApp", []
console.log "loading"
HangmanApp.controller "HangmanCtrl", [ '$scope', ($scope) ->
  $scope.letters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
]


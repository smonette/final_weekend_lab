HangmanApp = angular.module "HangmanApp", []

HangmanApp.controller "HangmanCtrl", ["$scope", "$http", ($scope, $http) ->
  $scope.word = ''
  $scope.secretWord = $scope.word.split('')
  $scope.letters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  $scope.blank = []

  for letter in $scope.word
    $scope.blank.push("_")

]

# Define Config for CSRF token
HangmanApp.config ["$httpProvider", ($httpProvider)->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]
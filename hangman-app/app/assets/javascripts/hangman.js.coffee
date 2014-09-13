HangmanApp = angular.module "HangmanApp", []

HangmanApp.controller "HangmanCtrl", ["$scope", "$http", ($scope, $http) ->
  $scope.word = ''
  $scope.secretWord = $scope.word.split('')
  $scope.letters = [
      {value:"a", picked:false },
      {value:"b",picked:false },
      {value:"c",picked:false },
      {value:"d",picked:false },
      {value: "e",picked:false },
      {value:"f",picked:false },
      {value: "g",picked:false },
      {value: "h",picked:false },
      {value: "i",picked:false },
      {value:"j",picked:false },
      {value:"k",picked:false },
      {value:"l",picked:false },
      {value:"m",picked:false },
      {value:"n",picked:false },
      {value:"o",picked:false },
      {value:"p",picked:false },
      {value:"q",picked:false },
      {value: "r",picked:false },
      {value:"s",picked:false },
      {value:"t",picked:false },
      {value:"u",picked:false },
      {value: "v",picked:false },
      {value: "w",picked:false },
      {value: "x",picked:false },
      {value: "y",picked:false },
      {value: "z",picked:false }
  ]


  $scope.blank = []

  for letter in $scope.word
    $scope.blank.push("_")

]

# Define Config for CSRF token
HangmanApp.config ["$httpProvider", ($httpProvider)->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]
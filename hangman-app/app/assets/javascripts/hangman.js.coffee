HangmanApp = angular.module "HangmanApp", []

HangmanApp.controller "HangmanCtrl", ["$scope", ($scope) ->
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





  $scope.handleSubmit = ->
    $scope.blanks = []
    $scope.secretWord = $scope.word.split('')

    for letter in $scope.secretWord
      $scope.blanks.push({value: letter, placeholder:"_", guessed:false})


  $scope.clickLetter = (guessedLetter) ->
    guessedLetter.picked = true

    for char in $scope.blanks
      if (guessedLetter.value == char.value)
        console.log(guessedLetter)
        console.log(char)


]

# Define Config for CSRF token
HangmanApp.config ["$httpProvider", ($httpProvider)->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]
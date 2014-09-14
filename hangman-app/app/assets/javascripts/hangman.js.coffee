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

  $scope.numGuesses = 0



  $scope.handleSubmit = ->
    $scope.blanks = []
    $scope.secretWord = $scope.word.split('')

    for letter in $scope.secretWord
      $scope.blanks.push({value: letter, placeholder:"_", guessed:false})

    $scope.hangman = [true]


  $scope.clickLetter = (guessedLetter) ->
    $scope.found = 0;

    for char in $scope.blanks
      if (guessedLetter.value == char.value)
        char.guessed = true
        console.log("found", char)
        $scope.found = $scope.found + 1

    if $scope.found != 0
      console.log("RIGHT");
      $scope.found = 0;
    else
      $scope.numGuesses = $scope.numGuesses + 1
      if $scope.numGuesses == 6
        $scope.hangman.push(true);
        $scope.loser = true;
      else if $scope.numGuesses < 6
        console.log("WRONG!")
        $scope.hangman.push(true);

    guessedLetter.picked = true;

]

# Define Config for CSRF token
HangmanApp.config ["$httpProvider", ($httpProvider)->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]
# Final Weekend Lab

## Part 1 - Hangman

The goal of this lab is to implement an AngularJS
version of the
[Hangman](http://en.wikipedia.org/wiki/Hangman_%28game%29)
game.

## Setup

- You should create a Rails app and set up an Angular front-end.
- Most of the lab will be in Angular, but we want you get used to
  integrating it with Rails.
- This will be a single page app.

## Minimum Requirements

See the [Wikipedia](http://en.wikipedia.org/wiki/Hangman_%28game%29)
link for basic gameplay instructions if you are unfamiliar with them.

- A user should be able to enter a word and then it should be hidden
  from view.
- Each letter of the word should be represented by an underlined blank
  space.
- Another use should be able to guess letters.

    - If a letter is guessed correctly, all instances of it should be
      shown in place of the blank spaces.
    - If a guessed letter is not in the word, a counter should be
      incremented as the user is only allowed a certain number of
      guesses.
    - A user should not be able to guess the same letter twice.

- The second user wins if she correctly identifies all the letters
  before the guessing limit is reaches.

## Bonus

- To help indicate the number of remaining guesses, draw the hangman
  (or the representation of your choosing) on an HTML5 Canvas element.

- Allow the user to input hints when they create the answer and let the user playing the game see these hints if they choose

## Part 2 - Build a to do app

For this part of the lab, we'd like you to create a To-do app with the following functionality 

1. The user should be able to create a task 
2. The user should be able to delete a task
3. The user should be able to mark a task as completed 
4. The user should be able to edit a task and change it's text
7. The to-do's should be persisent and stored in a database
8. The app should be a SPA and use the angular router as well as $http to make AJAX calls
6. The to-do app should be styled appropriately 

## Setup

1. Make sure you have a functioning API on the backend before you begin to include your angular code. Test your app in rails console and make sure you can do full CRUD on your to-dos before including angular
2. Once you have a functioning back-end, include angular and the angular router and start on your controller
3. Inside the controller, include the $http module and write functions to create, show, update and delete to-dos. 

## Bonus

1. Have the user edit a task when the task is double clicked (see [ng-Dblclick](xhttps://docs.angularjs.org/api/ng/directive/ngDblclick)) 
2. Change the color of the task to green when it is completed
3. Make the to-do app mobile responsive

## Huge Bonus - special reward for those who complete it

1. Once you've completed this task in Rails, challenge yourself and rebuild the API in Node (use Sequelize and if you're feeling brave, CoffeeScript too!)
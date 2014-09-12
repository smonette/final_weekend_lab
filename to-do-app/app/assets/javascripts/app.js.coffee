# Define App and dependencies
TaskApp = angular.module "TaskApp", ["ngRoute","templates"]

# Setup the angular router
TaskApp.config ["$routeProvider", "$locationProvider", ($routeProvider, $locationProvider) ->
  $routeProvider
    .when '/',
      templateUrl: "index.html",
      controller: "TasksCtrl"
  .otherwise
    redirectTo: "/"

  $locationProvider.html5Mode(true)
]


# tasks Controller
TaskApp.controller "TasksCtrl", ["$scope", "$http", ($scope, $http) ->
  $scope.tasks = []

  $scope.addTask = ->
    $http.post("/tasks.json", $scope.newTask).success (data) ->
      # make new task object empty
      $scope.newTask = {}
      # add this task to the tasks array
      $scope.tasks.push(data)

  $scope.getTasks = ->
    $http.get("/tasks.json").success (data) ->
      $scope.tasks = data

  $scope.deleteTask = (task) ->
    conf = confirm "Did you really finish it?"
    if conf
      $http.delete("/tasks/#{task.id}.json").success (data) ->
        $scope.tasks.splice($scope.tasks.indexOf(task), 1)

  $scope.updateTask = (task) ->
    this.clickedEdit = false
    $http.put("/tasks/#{this.task.id}.json", task).success (data) ->






  $scope.getTasks()
]

# Define Config for CSRF token
TaskApp.config ["$httpProvider", ($httpProvider)->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]





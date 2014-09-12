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


# Books Controller
TaskApp.controller "TasksCtrl", ["$scope", "$http", ($scope, $http) ->
  $scope.tasks = []

  $scope.addTask = ->
    $http.post("/tasks.json", $scope.newTask).success (data) ->
      # make new book object empty
      $scope.newTask = {}
      # add this book to the books array
      $scope.tasks.push(data)

  $scope.getTasks = ->
    $http.get("/tasks.json").success (data) ->
      $scope.tasks = data

  $scope.deleteTask = (book) ->
    conf = confirm "Are you sure?"
    if conf
      $http.delete("/tasks/#{book.id}.json").success (data) ->
        $scope.tasks.splice($scope.tasks.indexOf(task), 1)

  $scope.updateTask = (book) ->
    this.checked = false
    $http.put("/tasks/#{this.task.id}.json", task).success (data) ->





  $scope.getTasks()
]

# Define Config for CSRF token
TaskApp.config ["$httpProvider", ($httpProvider)->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]





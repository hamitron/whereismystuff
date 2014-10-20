myStuffApp.controller('ItemCtrl', ['$scope', 'Item', '$filter', function($scope, Item, $filter){

  // Item.query(function(json){
  //   $scope.Items = json;
  // });

	$scope.Items = Item.all();

  $scope.createItem = function() {
    var attr = {};
    attr.name = $scope.newName;
    attr.location = $scope.newLocation;
    var newItem = Item.create(attr);
    $scope.Items.push(newItem);
    $scope.newName = "";
    $scope.newLocation = "";

  };


  $scope.deleteItem = function(id, idx) {
  	Item.delete(id);
  	$scope.Items.splice(idx, 1);
  };


}]);
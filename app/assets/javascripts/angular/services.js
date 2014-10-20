myStuffApp.factory('Item', ['$resource', function($resource){
  function Item(){
  	this.service = $resource('api/items/:itemId', { itemId: '@id'}, { update: { method: 'PATCH' } })};
  Item.prototype.all = function() {
    return this.service.query();
  };
  Item.prototype.create = function(attr) {
  	return this.service.save(attr);
  }
  Item.prototype.delete = function(itId) {
  	return this.service.remove({itemId: itId});
  }

  return new Item;
}]);

myStuffApp.factory('Item', ['$resource', function($resource){
  
	// gathers JSON data served up from rails application
  function Item(){
  	this.service = $resource('api/items/:itemId', { itemId: '@id'}, { update: { method: 'PATCH' } })};
  Item.prototype.all = function() {
    return this.service.query();
  };
  
// Item create function
  Item.prototype.create = function(attr) {
  	return this.service.save(attr);
  }

 // Item destroy function
  Item.prototype.delete = function(itId) {
  	return this.service.remove({itemId: itId});
  }

  return new Item;
}]);

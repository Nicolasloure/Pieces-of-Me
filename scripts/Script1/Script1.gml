function Inventory() constructor {

	_inventory = [];
	_max_inventory_items = 5;
	
	add = function(_sprite, _name, _object, _description = "") {
		if (array_length(_inventory) < _max_inventory_items) {
			array_push(_inventory, {
				sprite: _sprite,
				name: _name,
				object: _object,
				description: _description,
	
			});	
		}
	}
	getAll = function() {
		return _inventory;
	}
	
	remove = function(index) {
		array_delete(_inventory, index, 1);
	}
}
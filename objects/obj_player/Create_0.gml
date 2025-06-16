alpha = 1

// Setting up variables for movement
target_x = obj_player.x;
target_y = obj_player.y ;
global.char_walking_speed = 7
global.player_movement_allowed = true


#region Inventory
global.inventory = [];  
global.max_inventory_items = 3;
global.inventory_visible = true;

// Add an item to inventory
global.add_item = function(_sprite, _name, _description = "") {
    if (array_length(global.inventory) < global.max_inventory_items) {
        var item = {
            sprite: _sprite,  
            name: _name,  
            description: _description  
        };
        array_push(global.inventory, item);  
    }
}

// Iterates the array to check for an item
global.has_item = function(_name) {
    var i;
    for (i = 0; i < array_length(global.inventory); i++) {
        if (global.inventory[i].name == _name) {
            return true;  // Item found
        }
    }
    return false;  // Item not found
}
#endregion



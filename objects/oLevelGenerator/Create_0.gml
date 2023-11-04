//заполняю комнату стенами
var lay_id = layer_get_id("Col");
var map_id = layer_tilemap_get_id(lay_id);

for (var i = 0; i < room_width div 32; i++) {
    for (var j = 0; j < room_height div 32; j++) {
        var data = tilemap_get(map_id, i, j);
        data = tile_set_index(data, 1);
        tilemap_set(map_id, data, i, j);
    }
}
//
var bsp_data = create_bsp(room_width,room_height,2);
replace_tiles_in_leaves(bsp_data);


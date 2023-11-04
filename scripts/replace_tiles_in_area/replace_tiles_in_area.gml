function replace_tiles_in_area(_x, _y, width, height, new_tile_id) {
    var lay_id = layer_get_id("Col");
    var map_id = layer_tilemap_get_id(lay_id);

    for (var i = _x; i < _x + width; i++) {
        for (var j = _y; j < _y + height; j++) {
            var data = tilemap_get(map_id, i, j);
            data = tile_set_index(data, new_tile_id);
            tilemap_set(map_id, data, i, j);
        }
    }
}
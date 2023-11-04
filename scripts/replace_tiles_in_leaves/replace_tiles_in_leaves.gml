function replace_tiles_in_leaves(bsp_data) {
    if (!ds_map_exists(bsp_data, "left") && !ds_map_exists(bsp_data, "right")) {
        var _x = bsp_data[? "x"];
        var _y = bsp_data[? "y"];
        var width = bsp_data[? "width"];
        var height = bsp_data[? "height"];
        
        var new_tile_id = tilemap_get_at_pixel(layer_tilemap_get_id(layer_get_id("TilesMain")), _x * 32, _y * 32);
        replace_tiles_in_area(_x, _y, width, height, new_tile_id);
    } else {
        if (ds_map_exists(bsp_data, "left")) {
            replace_tiles_in_leaves(bsp_data[? "left"]);
        }
        if (ds_map_exists(bsp_data, "right")) {
            replace_tiles_in_leaves(bsp_data[? "right"]);
        }
    }
}

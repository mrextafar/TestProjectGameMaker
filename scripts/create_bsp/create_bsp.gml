// В этой функции мы будем разбивать комнату и возвращать данные о разбиении
// Предположим, что min_size - это минимальный размер комнаты, ниже которого мы больше не будем разбивать
function create_bsp(width, height, min_size) {
    if (width < min_size * 2 || height < min_size * 2) {
        return ds_map_create();
    }

    var bsp_data = ds_map_create();
    bsp_data[? "x"] = 0;
    bsp_data[? "y"] = 0;
    bsp_data[? "width"] = width;
    bsp_data[? "height"] = height;

    var split_horizontal = random(1);

    if (split_horizontal) {
        var split = random_range(min_size, height - min_size);
        bsp_data[? "split"] = split;
        bsp_data[? "leaf"] = false;

        var left = ds_map_create();
        left[? "x"] = 0;
        left[? "y"] = 0;
        left[? "width"] = width;
        left[? "height"] = split;
        left[? "leaf"] = true;

        var right = ds_map_create();
        right[? "x"] = 0;
        right[? "y"] = split;
        right[? "width"] = width;
        right[? "height"] = height - split;
        right[? "leaf"] = true;

        bsp_data[? "left"] = left;
        bsp_data[? "right"] = right;
    } else {
        var split = random_range(min_size, width - min_size);
        bsp_data[? "split"] = split;
        bsp_data[? "leaf"] = false;

        var left = ds_map_create();
        left[? "x"] = 0;
        left[? "y"] = 0;
        left[? "width"] = split;
        left[? "height"] = height;
        left[? "leaf"] = true;

        var right = ds_map_create();
        right[? "x"] = split;
        right[? "y"] = 0;
        right[? "width"] = width - split;
        right[? "height"] = height;
        right[? "leaf"] = true;

        bsp_data[? "left"] = left;
        bsp_data[? "right"] = right;
    }

    return bsp_data;
	
}


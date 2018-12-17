///drawNums(x, y, value)
//draws a number with spr_numbers (aligned to top right

var argX = argument0;
var argY = argument1;
var num = argument2;

var list = ds_list_create();

var nTemp = num;

while (nTemp > 0)
{
    ds_list_add(list, nTemp mod 10);
    nTemp = floor(nTemp / 10);
}

if (ds_list_size(list) <= 0)
    ds_list_add(list, 0);

for (var i = 0; i < ds_list_size(list); i++)
    draw_sprite(spr_numbers, ds_list_find_value(list, i), argX - (i + 1) * sprite_get_width(spr_numbers), argY);

ds_list_destroy(list);

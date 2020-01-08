draw_sprite(s_table, 0, room_width / 2, room_height / 2)
draw_sprite(s_add, 0, room_width / 2, room_height / 2 + 177);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_color(room_width / 2, room_height / 2 - 185, "Card Items", c_gray, c_gray, c_gray, c_gray, 1);
//draw_rectangle(room_width / 2 - 146, room_height / 2 + 152, room_width / 2 + 146, room_height / 2 + 200, true);

for(var i = 0; i < cards; i++) {
	draw_sprite(s_card_item, 0, room_width / 2, room_height / 2 - 114 + (i * 50));
}
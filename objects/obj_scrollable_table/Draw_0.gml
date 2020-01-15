draw_sprite(spr_table_background, 0, x, y);
for(var i =start_from ; i < clamp(start_from+7,0,cards); i++) {
	card_y = y- start_indent + ((i-start_from) * 50);
	draw_sprite(s_card_item, 0, x, card_y);
	draw_text(x+135, card_y+20, i);
}

draw_self();

draw_sprite(s_add, 0, x, y + 290);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_color(x+140, y-50, "Card Items", c_gray, c_gray, c_gray, c_gray, 1);

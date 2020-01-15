button_x1 = x - button_width/2;
button_x2 = x + button_width/2;
button_y1 = scroll_button_possition_y - button_height/2;
button_y2 = scroll_button_possition_y + button_height/2;

if (!disable){
	if (point_in_rectangle(mouse_x, mouse_y, button_x1, button_y1, button_x2, button_y2) && mouse_check_button_pressed(mb_left)){
		dragging = true;	
	}

	if (mouse_check_button_released(mb_left)){
		dragging = false;	
	}

	else {
		if (mouse_check_button(mb_left) && dragging){
			value = (mouse_y - y - start_possition)/(end_possition - start_possition)*100;
		}
	}

	if (value < 0 || value > 100){
		value = clamp(value, 0, 100);
	}
}
else{
	value = 0;
	dragging = false;	
}

scroll_button_possition_y = y + start_possition + (value/100) * (end_possition - start_possition);

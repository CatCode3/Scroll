window_x1 = x;
window_x2 = x + 290;
window_y1 = y;
window_y2 = y + 280;


if ((cards > 5.6)){
	scroll_bar.disable = false;

	if (point_in_rectangle(mouse_x, mouse_y, window_x1, window_y1, window_x2, window_y2) && mouse_check_button_pressed(mb_left)){
		dragging = true;	
	}

	if (mouse_check_button_released(mb_left)){
		dragging = false;	
	}
	
	if (dragging){
		
		drag_len = (last_mouse_y - mouse_y);
		if (drag_len > 0){
			a = 2;	
		}
		
		scroll_bar.value +=  drag_len/50 * (100/(cards-5.6));

	}
}
else{
	scroll_bar.disable = true;
	dragging = false;
}

last_mouse_y = mouse_y;

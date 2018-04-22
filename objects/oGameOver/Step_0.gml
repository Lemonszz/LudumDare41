if(keyboard_check(vk_anykey) || mouse_check_button(mb_any))
{
	mouse_down += 50;	
}

if(mouse_down >= display_get_gui_width())
{
	game_restart();	
}
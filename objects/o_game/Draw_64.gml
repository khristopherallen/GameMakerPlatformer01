/// @description Draw pause menu

if paused_ {
	var gui_width = display_get_gui_width()
	var gui_height = display_get_gui_height()
	draw_set_color(c_black);
	draw_rectangle(0, 0, gui_width, gui_height, false);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(gui_width/2, gui_height/2, "Paused");
	
	draw_sprite_ext(s_quit_button, 0, gui_width/2-sprite_width, gui_height/2+30, image_xscale, image_yscale, 0, image_blend, image_alpha);
}

if !instance_exists(o_player) && room_ == "r_battle" {
	show_debug_message("DEAD");
	draw_text(view_get_wport(view_)/2, view_get_hport(view_)/2, "R.I.P. You")
}
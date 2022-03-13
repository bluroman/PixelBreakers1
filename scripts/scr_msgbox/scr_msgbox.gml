function scr_msgbox(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	//argument 0 = region x
	//argument 1 = region y
	//argument2 = width
	//argument3 = height

	//argument4 = message box title
	//argument5 = message box text

	//argument6 = button0 text
	//argument7 = button1 text

	//global.msgBox_TempBg = background_create_from_screen(argument0,argument1,argument2,argument3,0,0); //create a temporary background
	global.msgBox_bgx = argument0;
	global.msgBox_bgy = argument1;
	msgbox = instance_create(argument2/2,argument3/2,obj_mb_bg);

	msgbox.text = argument5;
	msgbox.text_title = argument4;
	msgbox.btntext = argument6;
	msgbox.btn1text = argument7;



}

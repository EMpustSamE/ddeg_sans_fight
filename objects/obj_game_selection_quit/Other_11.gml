/*if(instance_exists(text)){
	instance_destroy(text)
}*/

text = instance_create_depth(62,46,depth-1,text_typer)
//text.text=(image_index==1?"{color_text `yellow`}":"")+Lang_GetString("games.quit")
text.text=Lang_GetString("games.quit")
text.override_color_text_enabled=true

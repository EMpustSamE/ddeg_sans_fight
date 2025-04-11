if(!changing){
	instance_destroy(text1)
	text1 = instance_create_depth(320,360,0,text_typer)
	text1.text = GameSelectionGetInfo(choice)[0]
	if(phases>0){
		instance_destroy(text2)
	text2 = instance_create_depth(320,432.5,0,text_typer)
	text2.text = GameSelectionGetInfo(choice)[5+phase]
	}
}
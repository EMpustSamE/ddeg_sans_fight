///@arg text
function Dialog_Add() {
	ds_queue_enqueue(global._dialog_queue,argument[0]);
	show_debug_message("Dialog Add");
	return true;


}

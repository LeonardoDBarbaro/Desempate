extends CanvasLayer

signal restart


func _ready():
	$TextEdit.editable = false
	$RestartButton.disabled = true

func _on_restart_button_pressed():
	var valor
	var global_singleton = get_node("/root/Main/Node")
	if $ItemList.is_selected(0):
		valor = "sol"
	else:
		valor = "palta"
	global_singleton.set_global_data(valor,$TextEdit.get_line(0))
	$TextEdit.clear()
	$ItemList.deselect_all()
	restart.emit()

func _on_item_list_item_clicked(index, at_position, mouse_button_index):
	$TextEdit.editable = true
	pass # Replace with function body.



func _on_text_edit_text_changed():
	$RestartButton.disabled = false

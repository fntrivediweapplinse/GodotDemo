extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_check_box_pressed() -> void:
	SceneManager.push_scene("res://UI Comps/Checkbox/checkbox.tscn")


func _on_check_button_pressed() -> void:
	SceneManager.push_scene("res://UI Comps/Check Button/checkbutton.tscn")


func _on_scrollbar_pressed() -> void:
	SceneManager.push_scene("res://UI Comps/Scrollbar/scolldemo.tscn")

extends Control

@onready var name_input = $Panel/VBoxContainer/LineEdit

func _ready():
	pass
	
func _on_nextbtn_pressed() -> void:
	if name_input.text.strip_edges() != "":
		Global.player_name = name_input.text.strip_edges()
		SceneManager.push_scene("res://Take Input/show_name_scene.tscn")
		#get_tree().change_scene_to_file("res://Take Input/show_name_scene.tscn")

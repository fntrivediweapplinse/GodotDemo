extends Control

func _ready():
	get_tree().quit_on_go_back = false

func _on_start__pressed() -> void:
	SceneManager.push_scene("res://game_manager.tscn")
	
	#SceneManager.change_scene("res://game_manager.tscn")
	#get_tree().change_scene_to_file("res://game_manager.tscn")


func _on_input_transfer_pressed() -> void:
	SceneManager.push_scene("res://Take Input/take_input.tscn")
	#SceneManager.change_scene("res://Take Input/take_input.tscn")
	#get_tree().change_scene_to_file("res://Take Input/take_input.tscn") # Replace with function body.


func _on_move_object_pressed() -> void:
	SceneManager.push_scene("res://MoveSprite/sprite_2d.tscn")
	#SceneManager.change_scene("res://MoveSprite/sprite_2d.tscn")
	#get_tree().change_scene_to_file("res://MoveSprite/sprite_2d.tscn")

func _on_ui_components_pressed() -> void:
	SceneManager.push_scene("res://UI Comps/ui_comps.tscn")

func _on_start_exit_pressed() -> void:
	get_tree().quit()

extends Node

var scene_stack: Array[Node] = []

func _ready():
	get_tree().set_quit_on_go_back(false)

func push_scene(scene_path: String) -> void:
	var scene = load(scene_path).instantiate()

	if get_tree().current_scene:
		scene_stack.append(get_tree().current_scene)
		get_tree().current_scene.set_process(false)
		get_tree().current_scene.visible = false

	get_tree().root.add_child(scene)
	get_tree().current_scene = scene

func pop_scene() -> void:
	if scene_stack.size() == 0:
		get_tree().quit()
		return

	var current = get_tree().current_scene
	current.queue_free()

	var previous = scene_stack.pop_back()
	previous.visible = true
	previous.set_process(true)
	get_tree().current_scene = previous

func _notification(what: int) -> void:
	if what == NOTIFICATION_WM_GO_BACK_REQUEST:
		SceneManager.pop_scene()

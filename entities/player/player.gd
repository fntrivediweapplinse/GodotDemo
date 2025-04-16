extends Node2D

var bullet_scene = preload("res://entities/bullet/bullet.tscn")

var direction:int = 0
var speed: int = 1000

var player_half_width:int = 40

var shoot_time := 1.0
var shoot_counter = 0

func _ready():
	pass
	
func _process(delta):
	shoot_counter += delta
	
	if Input.is_action_pressed("shoot") and shoot_counter > shoot_time:
		shoot_counter = 0
		var bullet_instance = bullet_scene.instantiate()
		
		bullet_instance.position.x = position.x
		bullet_instance.position.y = position.y - 50
		
		get_parent().get_node("Bullets").add_child(bullet_instance)
	
	if Input.is_action_pressed("move_left"):
		direction = -1
	elif Input.is_action_pressed("move_right"):
		direction = 1
	else:
		direction = 0  
		
	#position.x += direction * speed * delta
	position.x = clamp(position.x + direction * speed * delta , player_half_width, 720-player_half_width)

func _on_left_btn_pressed() -> void:
	direction = -1
	position.x = clamp(position.x + direction * speed * get_process_delta_time(), player_half_width, 720 - player_half_width)
	print("Pressed left")

func _on_right_btn_pressed() -> void:
	direction = 1
	position.x = clamp(position.x + direction * speed * get_process_delta_time(), player_half_width, 720 - player_half_width)
	print("Pressed right")
	

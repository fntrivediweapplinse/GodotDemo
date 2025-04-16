extends Sprite2D

var speed = 800
var angular_speed = PI

func _process(delta):
	var direction = 0
	if Input.is_action_pressed("ui_left"):
		direction = -1
	if Input.is_action_pressed("ui_right"):
		direction = 1
	rotation += angular_speed * direction * delta
	var move = 0
	if Input.is_action_pressed("ui_up"):
		move = 1
	if Input.is_action_pressed("ui_down"):
		move = -1
	var velocity = Vector2.UP.rotated(rotation) * speed * move
	position += velocity * delta

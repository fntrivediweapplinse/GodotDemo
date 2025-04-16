extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_option_1_toggled(toggled_on: bool) -> void:
	update_label("Option 1", toggled_on)

func _on_option_2_toggled(toggled_on: bool) -> void:
	update_label("Option 2", toggled_on)

func _on_option_3_toggled(toggled_on: bool) -> void:
	update_label("Option 3", toggled_on)

func update_label(option_name: String, enabled: bool) -> void:
	var status = "Enabled" if enabled else "Disabled"
	$result.text = "%s %s" % [option_name, status]

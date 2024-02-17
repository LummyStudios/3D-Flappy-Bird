extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file("res://controls.tscn")
	

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept") or Input.is_action_just_pressed("ui_up") or Input.is_key_pressed(KEY_W) or Input.is_action_just_pressed("ui_up"):
		get_tree().change_scene_to_file("res://car.tscn")
		

func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://controls.tscn") # Replace with function body.

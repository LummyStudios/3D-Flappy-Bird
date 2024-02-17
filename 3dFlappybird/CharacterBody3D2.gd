extends CharacterBody3D

var SPEED = 5.0
var initial_position = Vector3(0, 0, 0)
var initial_velocity = Vector3(0, 0, SPEED)


# Get the gravity from the project settings to be synced with RigidBody nodes.
func _physics_process(delta):
	if Global.Scene == 1:
		velocity.z = SPEED
		position.x -= position.x

		if position.z > 0.1:
			Global.Score += 1
			$point2.play()
			position.x = 0
			initial_position = Vector3(0, randf_range(-5, 5), -100)
			position.x -= position.x
			# Reset position to the initial value
			position = initial_position

			# Reset velocity to the initial value
			velocity = initial_velocity
		
		# Move and slide with the current velocity
		move_and_slide()
		
	if Global.Scene == 0:
		# Directly set the z position
		position.z = -120
		


''



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
		

		

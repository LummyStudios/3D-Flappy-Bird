extends CharacterBody3D

var SPEED = 5.0
var initial_position = Vector3(0, 0, 0)
var initial_velocity = Vector3(0, 0, SPEED)

# Get the gravity from the project settings to be synced with RigidBody nodes.
func _physics_process(delta):
	if Global.Scene == 1:
		velocity.z = SPEED
		position.x -= position.x

		if position.z > 7.9:
	
			position.x = 0
			initial_position = Vector3(0, randf_range(-5, 5), -100)
			position.x -= position.x
		
			# Reset position to the initial value
			position = initial_position

			# Reset velocity to the initial value
			velocity = initial_velocity
		
		# Move and slide with the current velocity
		move_and_slide()
		
		if position.z < 0.09 and position.z > 0:
			Global.Score +=1
			$point2.play()
	if Global.Scene == 0:
		# Directly set the z position
		position.z = -120
		




func _on_area_3d_area_entered(area):
	print("hi") # Replace with function body.

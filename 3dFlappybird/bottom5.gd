extends CharacterBody3D

var SPEED = 0.005
var initial_velocity = Vector3(0, 0, SPEED)

func _ready():
	# Save the initial velocity
	initial_velocity = Vector3(0, 0, SPEED)

# Get the gravity from the project settings to be synced with RigidBody nodes.
func _physics_process(delta):
	velocity.z += SPEED
	if position.z > 0.9:
		position.z = -20
	if position.z < -20: 
		position.y = 0
		position.y += randi_range(-5, 5)
		
	

	# Check if the character is beyond the reset point
	

		# Reset velocity to the initial value
		velocity = initial_velocity
		
	# Move and slide with the current velocity
	move_and_slide()

# CanvasLayer script

extends CanvasLayer

var Score = 0

var label : Label

func _ready():
	# Create a Label node
	pass
func _physics_process(delta):
	label = Label.new()
	# Set properties for the label
	label.text = str(Score)
	label.size = Vector2(200, 50)

	# Add the label as a child of the CanvasLayer
	add_child(label)

	# Set the label's position (screen coordinates)
	label.position = Vector2(50, 50)
	
	
func score(score):
	pass # Replace with function body.



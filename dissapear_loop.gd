extends Sprite2D

enum MovementState {
	TO_MAIN_POSITION,
	TO_ORIGINAL_POSITION
}

var current_state = MovementState.TO_ORIGINAL_POSITION

# Called when the node enters the scene tree for the first time.
func _ready():
	position.x = 700
	position.y = 325
	# Start the timer when the scene loads
	$Timer.start()

# Function to move the sprite to the position (1000, 1000)
func move_to_original_position():
	position.x = 1000
	position.y = 1000

# Function to move the sprite to the position (100, 500)
func move_to_main_position():
	position.x = 700
	position.y = 325

func _on_timer_timeout():
	# Toggle visibility
	visible = !visible

	if current_state == MovementState.TO_ORIGINAL_POSITION:
		move_to_original_position()
		current_state = MovementState.TO_MAIN_POSITION
	else:
		move_to_main_position()
		current_state = MovementState.TO_ORIGINAL_POSITION
	
	# Start the timer again
	$Timer.start()

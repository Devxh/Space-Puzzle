extends Sprite2D

const SPEED = 700
const ROTATION_SPEED = 0.5  # Adjust this value to control the rotation speed.

# Add a flag to check if Object B should move.
var should_move = false

func _on_area_2d_area_entered(_area):
	should_move = true

func _process(delta):
	# Check if Object B should move.
	if should_move:
		# Calculate the movement direction (negative X-axis direction).
		var direction = Vector2.RIGHT  # Use Vector2.LEFT for leftward movement.

		# Move Object B in the left direction.
		position += direction * SPEED * delta

		# Rotate Object B.
		rotate(deg_to_rad(ROTATION_SPEED * 360 * delta))

func _on_area_2d_area_exited(_area):
	queue_free()


func _on_invisible_trigger_area_entered(_area):
	queue_free()

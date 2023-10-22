extends Sprite2D

const SPEED = 400

# Add a flag to check if Object B should move.
var should_move = false


func _on_area_2d_area_entered(_area):
	should_move = true

func _process(delta):
	# Check if Object B should move.
	if should_move:
		# Calculate the left direction (negative X-axis direction).
		var direction = Vector2.DOWN

		# Move Object B in the left direction.
		position += direction * SPEED * delta


func _on_queue_free_area_entered(_area):
	queue_free()

extends Sprite2D

var rotationspeed: float = 1
var rotateLeft: bool = true

func _process(delta: float):
	if rotateLeft:
		rotate(-rotationspeed * delta)  # Negative rotation speed to rotate left
	else:
		rotate(rotationspeed * delta)   # Positive rotation speed to rotate right

	# Check if the sprite reached a certain angle (e.g., 90 degrees)
	if abs(rotation_degrees) >= 90:
		rotateLeft = !rotateLeft  # Toggle the direction


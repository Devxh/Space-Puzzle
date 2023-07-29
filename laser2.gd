extends Sprite2D

var initialPosition: Vector2
var movementSpeed: float = 300.0
var direction: int = 1  # Start by moving upwards

func _ready():
	initialPosition = position
	
func _process(delta: float):
	# Calculate the new position
	var newPosition = position + Vector2(0, movementSpeed * delta * direction)
	
	# Check if the object has reached the end of the movement range
	if newPosition.y > initialPosition.y + 113:  # Change 239 to the desired movement range
		newPosition.y = initialPosition.y + 113
		direction = -1  # Reverse direction to move downwards
	elif newPosition.y < initialPosition.y - 113:  # Change 239 to the desired movement range
		newPosition.y = initialPosition.y - 113
		direction = 1  # Reverse direction to move upwards
	
	# Update the object's position
	position = newPosition

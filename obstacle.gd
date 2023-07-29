extends Sprite2D

var initialPosition: Vector2
var movementSpeed: float = 300.0
var direction: int = -1

func _ready():
	initialPosition = position
	
func _process(delta: float):
	# Calculate the new position
	var newPosition = position + Vector2(movementSpeed * delta * direction, 0)
	
	# Check if the object has reached the end of the movement range
	if newPosition.x > initialPosition.x + 117:  # Change 100 to the desired movement range
		newPosition.x = initialPosition.x + 117
		direction = -1
	elif newPosition.x < initialPosition.x - 117:  # Change 100 to the desired movement range
		newPosition.x = initialPosition.x - 117
		direction = 1
	
	# Update the object's position
	position = newPosition

extends Sprite2D

var initialPosition: Vector2
var movementSpeed: float = 200.0
var direction: int = 1

func _ready():
	initialPosition = position

func _process(delta: float):
	var newPosition = position + Vector2(0, movementSpeed * delta * direction)

	if direction == 1:
		if newPosition.y < initialPosition.y + 10:
			newPosition.y = initialPosition.y + 10
			direction = 1
	else: 
		pass

	position = newPosition


func _on_area_2d_area_entered(_area):
	position = initialPosition
	direction = 1  # Reset the direction to start moving down again

extends Sprite2D

var initialPosition: Vector2
var movementSpeed: float = 400.0
var direction: int = -1

func _ready():
	initialPosition = position

func _process(delta: float):
	var newPosition = position + Vector2(0, movementSpeed * delta * direction)
	
	if newPosition.y > initialPosition.y + 10:
		newPosition.y = initialPosition.y + 10
		direction = 0

	position = newPosition


func _on_area_2d_area_entered(_area):
	position = initialPosition

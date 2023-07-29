extends Sprite2D

var initialPosition: Vector2
var movementSpeed: float = 400.0
var direction: int = 1

func _ready():
	initialPosition = position

func _process(delta: float):
	var newPosition = position + Vector2(movementSpeed * delta * direction, 0)

	if newPosition.x > initialPosition.x + 10:
		newPosition.x = initialPosition.x + 10
		direction = 0

	position = newPosition

func _on_area_2d_area_entered(area):
	position = initialPosition

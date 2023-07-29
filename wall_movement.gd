extends Sprite2D

var initialPosition: Vector2
var movementSpeed: float = 400.0
var direction: int = -1
var reverseTimer: float = 3.0
var reverseTimerElapsed: float = 0.0

func _ready():
	initialPosition = position
	reverseTimerElapsed = 0.0

func _process(delta: float):
	if reverseTimerElapsed > 0:
		reverseTimerElapsed -= delta
	else:
		var newPosition = position + Vector2(movementSpeed * delta * direction, 0)

		if newPosition.x >= initialPosition.x + 10:
			newPosition.x = initialPosition.x + 10
			direction *= -1 
			reverseTimerElapsed = reverseTimer

		position = newPosition

func _on_area_2d_area_entered(_area):
	position = initialPosition
	reverseTimerElapsed = reverseTimer

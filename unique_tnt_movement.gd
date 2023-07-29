extends Sprite2D

var initialPosition: Vector2
var movementSpeed: float = 50.0
var currentDirection: Vector2 = Vector2.RIGHT
var distanceMoved: float = 3.0
var squareSize: float = 50.0  # Adjust this to set the size of the square pattern

func _ready():
	initialPosition = position

func _process(delta: float):
	var newPosition = position + currentDirection * movementSpeed * delta
	distanceMoved += movementSpeed * delta

	if distanceMoved >= squareSize:
		distanceMoved = 0.0

		if currentDirection == Vector2.RIGHT:
			newPosition = Vector2(initialPosition.x + squareSize, position.y)
			currentDirection = Vector2.DOWN
		elif currentDirection == Vector2.DOWN:
			newPosition = Vector2(position.x, initialPosition.y + squareSize)
			currentDirection = Vector2.LEFT
		elif currentDirection == Vector2.LEFT:
			newPosition = Vector2(initialPosition.x - squareSize, position.y)
			currentDirection = Vector2.UP
		elif currentDirection == Vector2.UP:
			newPosition = Vector2(position.x, initialPosition.y - squareSize)
			currentDirection = Vector2.RIGHT

	position = newPosition

func _on_area_2d_area_entered(_area):
	position = initialPosition
	currentDirection = Vector2.RIGHT
	distanceMoved = 0.0


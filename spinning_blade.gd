extends Sprite2D

var rotationspeed: float = 4

func _process(delta: float):
	rotate(rotationspeed * delta)



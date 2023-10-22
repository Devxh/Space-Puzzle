extends Sprite2D

var rotationspeed: float = 1

func _process(delta: float):
	rotate(rotationspeed * delta)

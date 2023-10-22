extends Sprite2D

var rotationspeed: float = 0.2

func _process(delta: float):
	rotate(rotationspeed * delta)

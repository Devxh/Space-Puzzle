extends Camera2D

var timer := 0.0
var speed := 3.0
var amplitude := 64.0

func _process(delta):
	timer += delta
	position.x = sin(timer * speed) * amplitude

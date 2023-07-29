extends Spatial

var rotation_speed = 1.0

func _process(delta):
	rotate_object(delta)

func rotate_object(delta):
	var rotation_amount = rotation_speed * delta
	rotate_y(rotation_amount)

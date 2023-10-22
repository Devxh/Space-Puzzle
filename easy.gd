extends Button

func _on_mouse_entered():
	custom_minimum_size = Vector2(100, 100)

func _on_mouse_exited():
	custom_minimum_size = Vector2(0, 0)


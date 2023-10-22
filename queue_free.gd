extends Sprite2D

func _on_area_2d_area_entered(_area):
	queue_free()


func _on_area_2d_area_exited(_area):
	queue_free()


func _on_fuel_area_entered(_area):
	queue_free()
	


func _on_rainbow_ore_area_entered(_area):
	queue_free()


func _on_blood_moon_area_entered(_area):
	queue_free()


func _on_invisible_trigger_area_entered(_area):
	queue_free()

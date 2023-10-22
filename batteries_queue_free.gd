extends Node2D

func _on_battery_area_entered(_area):
	queue_free()

extends CanvasLayer

var fuel_found = 0
var fuel_left = 4
var rainbow_ore_found = 0
var rainbow_ore_left = 4
var blood_stone_found = 0
var blood_stone_left = 4

func _ready():
	$fuel_found.text = str(fuel_found)
	$fuel_left.text = str(fuel_left)
	$ore_found.text = str(rainbow_ore_found)
	$ore_left.text = str(rainbow_ore_left)
	$Stone_found.text = str(blood_stone_found)
	$Stone_left.text = str(blood_stone_left)
	


func _on_fuel_area_entered(_area):
	fuel_found = fuel_found + 1
	fuel_left = fuel_left - 1
	_ready()

func _on_rainbow_ore_area_entered(_area):
	rainbow_ore_found = rainbow_ore_found + 1
	rainbow_ore_left = rainbow_ore_left - 1
	_ready()


func _on_blood_moon_area_entered(_area):
	blood_stone_found = blood_stone_found + 1
	blood_stone_left = blood_stone_left - 1


func _on_teleporter_area_entered(_area):
	if fuel_found == 4:
		if rainbow_ore_found == 4:
			if blood_stone_found == 4:
				get_tree().change_scene_to_file("res://hard.tscn")

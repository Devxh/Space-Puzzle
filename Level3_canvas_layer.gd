extends CanvasLayer

var variable = 0
var fuels = 0

func _ready():
	$gunpowder.text = str(variable)
	$Fuel.text = str(fuels)


func _on_area_2d_area_entered(_area):
	variable = variable + 1
	_ready()

func _on_area_2d_area_exited(_area):
	fuels = fuels + 1
	_ready()


func _on_area_2d_area_shape_entered(_area_rid, _area, _area_shape_index, _local_shape_index):
	if variable == 5 and fuels == 5:
		get_tree().change_scene_to_file("res://medium_level.tscn")

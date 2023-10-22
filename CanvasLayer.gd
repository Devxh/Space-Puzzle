extends CanvasLayer

var variable = 0

func _ready():
	$Shards.text = str(variable)
func _on_area_2d_area_entered(_area):
	variable = variable + 1
	_ready()


func _on_exit_area_entered(_area):
	if variable == 25:
		get_tree().change_scene_to_file("res://Complete_the_mission.tscn")


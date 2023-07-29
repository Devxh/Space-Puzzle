extends CanvasLayer

var variable = 0
var key_door = null

func _ready():
	$Key.text = str(variable)
	key_door = get_node("/Node2D/tilemap/key_door")

func _on_area_2d_area_entered(area):
	variable = variable + 1
	$Key.text = str(variable)
	
	if variable == 1 and key_door:
		key_door.visible = false

func _on_area_2d_area_exited(area):
	variable = 0
	$Key.text = str(variable)
	if key_door:
		key_door.visible = true

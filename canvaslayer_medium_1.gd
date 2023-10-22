extends CanvasLayer

var variable = 0

func _ready():
	$Battery.text = str(variable)

func _on_battery_area_entered(_area):
	variable = variable + 1
	_ready()

extends CanvasLayer

var death_message = str("   ")

func _ready():
	$death_message.text = str(death_message)

func _on_practise_laser_area_entered(area):
	death_message = str("You touched the dangerous object")
	_ready()
	
func _on_practise_laser_area_exited(area):
	death_message = str("  ")
	_ready()


func _on_area_2d_area_entered(area):
	death_message = str("You touched the dangerous object")
	_ready()

func _on_area_2d_area_exited(area):
	death_message = str("  ")
	_ready()

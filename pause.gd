extends Node2D

var isPaused = false
var originalTimeScale = 1.0

func _ready() -> void:
	originalTimeScale = Engine.time_scale

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("menu_pause"):
		togglePause()
	pass

func togglePause() -> void:
	isPaused = !isPaused

	if isPaused:
		# Pause the game
		Engine.time_scale = 0.0
	else:
		# Unpause the game
		Engine.time_scale = originalTimeScale
	pass

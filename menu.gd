extends Node2D

func _on_play_pressed():
	get_tree().change_scene_to_file("res://easy_level_menu.tscn")


func _on_instruction_pressed():
	get_tree().change_scene_to_file("res://guide.tscn")


func _on_button_pressed():
	get_tree().change_scene_to_file("res://setting.tscn")

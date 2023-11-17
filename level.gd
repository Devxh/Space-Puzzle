extends Node2D

func _on_easy_pressed():
	get_tree().change_scene_to_file("res://easy.tscn")


func _on_hard_pressed():
	get_tree().change_scene_to_file("res://game.tscn")


func _on_back_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")


func _on_next_medium_pressed():
	get_tree().change_scene_to_file("res://medium_level_menu.tscn")


func _on_back_easy_pressed():
	get_tree().change_scene_to_file("res://easy_level_menu.tscn")


func _on_back_medium_pressed():
	get_tree().change_scene_to_file("res://medium_level_menu.tscn")


func _on_next_easy_pressed():
	get_tree().change_scene_to_file("res://easy_level_menu.tscn")


func _on_next_hard_pressed():
	get_tree().change_scene_to_file("res://hard_level_menu.tscn")


func _on_medium_pressed():
	get_tree().change_scene_to_file("res://medium_1.tscn")


func _on_sterotype_easy_pressed():
	get_tree().change_scene_to_file("res://medium_2.tscn")


func _on_next_sterotype_pressed():
	get_tree().change_scene_to_file("res://Sterotype/Sterotype_easy/sterotype_easy.tscn")



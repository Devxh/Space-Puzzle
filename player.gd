extends CharacterBody2D

const SPEED = 360.0
const JUMP_VELOCITY = -300.0
const DOWN_VELOCITY = 300.0
const ROTATION_SPEED = 180.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("jump"):
		global_position.y -= SPEED * delta

	# Handle Down.
	if Input.is_action_just_pressed("Down"):
		global_position.y += SPEED * delta

	# Handle Movement.
	velocity.x = 0
	if Input.is_action_pressed("right"):
		velocity.x += SPEED
	if Input.is_action_pressed("left"):
		velocity.x -= SPEED
	if Input.is_action_just_released("right") or Input.is_action_just_released("left"):
		velocity.x = 0

	if Input.is_action_pressed("jump"):
		velocity.y -= SPEED * delta
	if Input.is_action_pressed("Down"):
		velocity.y += SPEED * delta
	if Input.is_action_just_released("jump") or Input.is_action_just_released("Down"):
		velocity.y = 0

	move_and_slide()

func _on_area_2d_area_entered(area):
	if area.is_in_group("Portal"):
		position.x = 0
		position.y = 0
	if area.is_in_group("Teleport"):
		position.x = -1103.5
		position.y = 1259.5
	if area.is_in_group("obstacle"):
		position.x = -1103.5
		position.y = 1259.5
	if area.is_in_group("Teleporter"):
		position.x = 397
		position.y = -215
	if area.is_in_group("IdleRobot"):
		position.x = 397
		position.y = -215
	if area.is_in_group("Spinob"):
		position.x = 397
		position.y = -215
	if area.is_in_group("Laser"):
		position.x = -1256
		position.y = 300
	if area.is_in_group("Laser2"):
		position.x = -2256
		position.y = 1000
	if area.is_in_group("Laser_movement"):
		position.x = -1256
		position.y = 300
	if area.is_in_group("Laser_bullet"):
		position.x = -1256
		position.y = 300
	if area.is_in_group("Star_r"):
		position.x = -1256
		position.y = 300
	if area.is_in_group("Easy"):
		get_tree().change_scene_to_file("res://Level3.tscn")
		position.x = -2256
		position.y = 100
	if area.is_in_group("laser2"):
		position.x = 0
		position.y = 0
		get_tree().change_scene_to_file("res://death_message.tscn")
	if area.is_in_group("Wall"):
		position.x = 0
		position.y = 0
		get_tree().change_scene_to_file("res://death_message.tscn")
	if area.is_in_group("Spring"):
		get_tree().change_scene_to_file("res://death_message.tscn")
		position.x = 0
		position.y = 0	
	if area.is_in_group("Bomb"):
		get_tree().change_scene_to_file("res://bomb.tscn")
	if area.is_in_group("spinning_blade"):
		position.x = 0
		position.y = 0
	if area.is_in_group("key"):
		position.x = 0
		position.y = 0
	if area.is_in_group("TNT"):
		get_tree().change_scene_to_file("res://Complete_the_mission_death_gui.tscn")
	if area.is_in_group("hard"):
		get_tree().change_scene_to_file("res://never_gonna_give_you_up.tscn")
	if area.is_in_group("hard_Laser"):
		get_tree().change_scene_to_file("res://hard_dead_message.tscn")
	if area.is_in_group("hard_blade"):
		get_tree().change_scene_to_file("res://hard_dead_message.tscn")
	if area.is_in_group("hard_I_teleport"):
		get_tree().change_scene_to_file("res://win.tscn")
	if area.is_in_group("practise"):
		position.x = 0
		position.y = 0
	if area.is_in_group("easy_I"):
		get_tree().change_scene_to_file("res://Easy_ii.tscn")
	if area.is_in_group("ball"):
		get_tree().change_scene_to_file("res://easy.tscn")
	if area.is_in_group("star_obj_easy"):
		get_tree().change_scene_to_file("res://Easy_ii.tscn")
	if area.is_in_group("easy_ii"):
		get_tree().change_scene_to_file("res://easy_iii.tscn")
	if area.is_in_group("easy_iii_obj"):
		get_tree().change_scene_to_file("res://easy_iii.tscn")
	if area.is_in_group("easy_iii_teleporter"):
		get_tree().change_scene_to_file("res://easy_iv.tscn")
	if area.is_in_group("easy_iv_obstacle"):
		get_tree().change_scene_to_file("res://easy_iv.tscn")
	if area.is_in_group("easy_iv"):
		get_tree().change_scene_to_file("res://easy_5.tscn")
	if area.is_in_group("easy_5_obj"):
		get_tree().change_scene_to_file("res://easy_5.tscn")
	if area.is_in_group("easy_5"):
		get_tree().change_scene_to_file("res://easy_6.tscn")
	if area.is_in_group("easy_6_obj"):
		get_tree().change_scene_to_file("res://easy_6.tscn")
	if area.is_in_group("easy_6"):
		get_tree().change_scene_to_file("res://easy_7.tscn")
	if area.is_in_group("easy_7_obj"):
		get_tree().change_scene_to_file("res://easy_7.tscn")
	if area.is_in_group("easy_7"):
		get_tree().change_scene_to_file("res://easy_8.tscn")
	if area.is_in_group("easy_8_obj"):
		get_tree().change_scene_to_file("res://easy_8.tscn")
	if area.is_in_group("easy_8"):
		get_tree().change_scene_to_file("res://easy_9.tscn")
	if area.is_in_group("easy_9_obj"):
		get_tree().change_scene_to_file("res://easy_9.tscn")
	if area.is_in_group("easy_9"):
		get_tree().change_scene_to_file("res://level_10_easy.tscn")
	if area.is_in_group("easy_10_obstacle"):
		get_tree().change_scene_to_file("res://level_10_easy.tscn")
	if area.is_in_group("level_10"):
		get_tree().change_scene_to_file("res://menu.tscn")
	if area.is_in_group("level_11_obstacle"):
		get_tree().change_scene_to_file("res://level_11_easy.tscn")
	if area.is_in_group("medium_2_obj"):
		get_tree().change_scene_to_file("res://menu.tscn")
	
	##Medium level
	if area.is_in_group("medium_1_obj"):
		get_tree().change_scene_to_file("res://medium_1.tscn")
	if area.is_in_group("medium_2"):
		get_tree().change_scene_to_file("res://medium_3.tscn")
		##MEDIUM STEROTYPES
	if area.is_in_group("laser_medium_level"):
		get_tree().change_scene_to_file("res://medium_2.tscn")
func _on_area_2d_area_exited(_area):
	position.x = 0
	position.y = 0



func _on_rolling_ball_area_entered(_area):
	get_tree().change_scene_to_file("res://medium_1.tscn")

extends CharacterBody2D

const SPEED = 360.0
const JUMP_VELOCITY = -300.0
const DOWN_VELOCITY = 300.0
const ROTATION_SPEED = 0.1

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

	# Rotate the player continuously around its axis.
	rotation += ROTATION_SPEED * delta

	move_and_slide()


func _on_sprike_area_entered(_sprike):
	get_tree().change_scene_to_file("res://Sterotype/Sterotype_easy/sterotype_easy__2.tscn")


func _on_end_area_entered(_area):
	get_tree().change_scene_to_file("res://Sterotype/Sterotype_easy/sterotype_3.tscn")


func _on_sterotype_spike_area_entered(_area):
	get_tree().change_scene_to_file("res://Sterotype/Sterotype_easy/sterotype_3.tscn")


func _on_easy_3_end_area_entered(_area):
	get_tree().change_scene_to_file("res://menu.tscn")

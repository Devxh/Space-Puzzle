extends CharacterBody2D

var speed = 200
var isChasingPlayer = false
var isPushing = false
var pushForce = 200

var push_direction = Vector2(0, 0)

func _physics_process(delta):
	if isChasingPlayer:
		var player = get_node("../player")
		var direction = (player.global_position - global_position).normalized()
		var motion = direction * speed * delta
		move_and_collide(motion)

	if isPushing:
		# Implement pushing logic based on player input:
		push_direction = Vector2(0, 0)  # Reset push_direction to (0, 0)

		if Input.is_action_pressed("left"):
			push_direction.x -= 1
		if Input.is_action_pressed("right"):
			push_direction.x += 1
		if Input.is_action_pressed("jump"):
			push_direction.y -= 1
		if Input.is_action_pressed("Down"):
			push_direction.y += 1

		push_direction = push_direction.normalized()  # Normalize the push direction

		var push_vector = push_direction * pushForce * delta
		move_and_collide(push_vector)

func _on_area_2d_area_entered(area):
	if area.is_in_group("PlayerGroup"):
		isChasingPlayer = true

func _on_area_2d_area_exited(area):
	if area.is_in_group("PlayerGroup"):
		isChasingPlayer = false

func _input(event):
	if event.is_action_pressed("space"):
		isPushing = true
	else:
		isPushing = false

func _on_queue_free_area_entered(area):
	if area.is_in_group("PlayerGroup"):
		queue_free()

extends Sprite2D

var visibility_timer := 0
var is_visible := true
var visibility_interval := 3.0
var visibility_toggle_timer := 0

# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = is_visible

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Increase the visibility toggle timer by the time passed since the last frame
	visibility_toggle_timer += delta
	
	# Check if the visibility interval (3 seconds) has passed
	if visibility_toggle_timer >= visibility_interval:
		# Toggle the visibility
		is_visible = !is_visible
		self.visible = is_visible

		# Reset the visibility toggle timer
		visibility_toggle_timer = 0

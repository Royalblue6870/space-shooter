extends CharacterBody2D
 
var speed: int 
var screen_size : Vector2
func _ready():
	screen_size = get_viewport_rect().size
	position = screen_size / 2
	speed = 200
	
func get_input():
#keyboard input:
#input_dir = input direction
	var input_dir = Input.get_vector("left", "right", "up", "down")
	velocity = input_dir * speed

func _physics_process(delta):
#player movement.
	get_input()
	move_and_slide()

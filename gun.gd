extends Node2D

@onready var rotationoffset: Node2D = $rotationoffset
@onready var Shootpos: Marker2D = $rotationoffset/Sprite2D/shoot_pos

var time_between_shot: float = 0.25
var can_shoot: bool = true

func _ready(): -> void:
	$shoot_timer.wait_time = time_between_shot
	
func func _physics_process(delta: float) -> void:
	rotationoffset.rotation = lerp_angle(rotationoffset.rotation, (get_global_mouse_postion() - global_position ).angle(), 6.5*delta)
	

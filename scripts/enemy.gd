extends Area2D

@export var speed = 100
@onready var laserbeam_prefab = preload("res://prefabs/LASERBEAM.tscn")

func _on_body_entered(body):
	if body.name == "player":
		body.respawn()
		
	pass # Replace with function body.

func _on_timer_timeout():
	var laserbeam = laserbeam_prefab.instantiate()
	laserbeam.position = position
	add_child(laserbeam)
	pass # Replace with function body.

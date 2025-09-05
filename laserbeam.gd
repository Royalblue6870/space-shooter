extends Area2D
@export var speed = 3
@onready var BOOM_prefab = preload("res://prefabs/boom.tscn")


func _process(_delta):
	position.y += speed
	if $RayCast2D.is_colliding():
		speed = 0
		var BOOM = BOOM_prefab.instantiate()
		BOOM.position = position
		get_parent().add_child(BOOM)
		queue_free()
		

func _on_body_entered(body):
	if body.name == "player":
		body.respawn()
	pass # Replace with function body.

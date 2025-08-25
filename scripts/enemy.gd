extends Area2D

@export var speed = 100
	
func _on_body_entered(body):
	if body.name == "player":
		body.respawn()
	pass # Replace with function body.

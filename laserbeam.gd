extends Area2D
@export var speed = 3



func _process(_delta):
	$AnimatedSprite2D.play("norm") 
	position.y += speed
	if $RayCast2D.is_colliding():
		$AnimatedSprite2D.play("laserboom")

func _on_body_entered(body):
	if body.name == "player":
		body.respawn()
	pass # Replace with function body.

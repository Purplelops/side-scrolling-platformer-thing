extends StaticBody2D

var speed = 5

func _physics_process(delta: float) -> void:
	position.x -= speed

extends StaticBody2D


func _physics_process(delta: float) -> void:
	position.x -= GlobalVariables.obstacle_speed

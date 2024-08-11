extends Node2D


func _ready() -> void:
	await get_tree().create_timer(12).timeout
	queue_free()


func _physics_process(delta: float) -> void:
	position.x -= GlobalVariables.obstacle_speed

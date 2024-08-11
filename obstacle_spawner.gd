extends Node2D

var obstacles: Array = [preload("res://obstacle_1.tscn"), ]

func _ready() -> void:
	spawn_obstacle()


func spawn_obstacle():
	var obstacle = obstacles[0].instantiate()
	obstacle.position = $SpawnPosition.position
	add_child(obstacle)


func _on_spawn_area_body_entered(body: Node2D) -> void:
	spawn_obstacle()


func _on_player_spawn_new_obstacle() -> void:
	spawn_obstacle()

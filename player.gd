extends CharacterBody2D

signal player_crashed
signal spawn_new_obstacle

var move_speed: float = 400.0
var jump_force: float = 600.0
const GRAVITY: float = 2000.0
var is_alive: bool = true

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += delta * GRAVITY
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y -= jump_force
	
	if is_on_wall() and is_alive:
		emit_signal("player_crashed")
		is_alive = false
	
	move_and_slide()


func _on_area_2d_area_entered(area: Area2D) -> void:
	emit_signal("spawn_new_obstacle")

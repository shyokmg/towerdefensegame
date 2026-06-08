extends CharacterBody2D


const speed = 50
@export var playerBase: Node2D
@onready var nav_agent := $NavigationAgent2D as NavigationAgent2D

func _physics_process(delta: float) -> void:
	var dir = to_local(nav_agent.get_next_path_position()).normalized()
	velocity = dir * speed
	move_and_slide()
	
func makepath() -> void:
	nav_agent.target_position = Vector2(277,136)
	

func _on_timer_timeout() -> void:
	makepath()

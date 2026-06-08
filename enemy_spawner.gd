extends Node2D

var enemy = preload("res://scenes/enemy/enemy.tscn")
var enemynum = 1
@export var maxenemy: int

func spawn():
	var instance = enemy.instantiate()
	if enemynum <= maxenemy:
		add_child(instance)
		enemynum += 1

func _on_timer_timeout() -> void:
		spawn()
	

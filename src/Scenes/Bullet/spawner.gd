extends Node2D

const BULLET: PackedScene = preload("res://Scenes/Bullet/bullet.tscn")

func _on_timer_timeout() -> void:
	rotation = randf_range(0, PI * 2.0)
	var bullet: Area2D = BULLET.instantiate()
	bullet.global_position = $Position.global_position
	add_sibling(bullet)

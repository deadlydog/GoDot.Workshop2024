extends Area2D

# @export will show the variable in the node's Inspector GUI.
@export var speed: float = 100.0

const PLAYER: Script = preload("res://Scenes/Player/player.gd")

func _physics_process(delta: float) -> void:
	position = position.move_toward(Vector2.ZERO, delta * speed)


func _on_area_entered(area: Area2D) -> void:
	#if area.has_method("hit"):
		#area.hit()
	if area is PLAYER:
		area.hit()
	queue_free() # Delete this node after the current frame

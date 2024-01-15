extends Area2D

# Ctrl + Click on things to go to definition.
# @onready = Load the variable in when the game is ran.

@onready var shield: Area2D = $Shield
var health: int = 3

func _physics_process(delta: float) -> void:
	shield.look_at(get_global_mouse_position())

func hit() -> void:
	health -= 1
	if health == 0:
		queue_free() # Destroy this Player node

extends RigidBody2D

@export var jump_force = 1000

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("jump"):
		apply_central_impulse(Vector2.UP * jump_force)

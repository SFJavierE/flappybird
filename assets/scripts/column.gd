class_name col
extends AnimatableBody2D

@onready var anim_player : AnimationPlayer = $AnimationPlayer

func set_x_up() -> void:
	anim_player.play("x_up")

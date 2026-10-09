extends RayCast2D
@onready var score: score = $"../../Score"

var column_collision = null

func _process(delta: float) -> void:
	if is_colliding():
		var collider = get_collider()
		if collider != column_collision:
			column_collision = collider
			score.update_counter()

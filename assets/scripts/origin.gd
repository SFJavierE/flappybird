extends Node2D

const COLUMN = preload("uid://to6nnnyjl664")
@onready var timer: Timer = $Timer

@export var max_columns = 6
var column_counter = 0

func _on_timer_timeout() -> void:
	var column = COLUMN.instantiate() as col
	add_child(column)
	
	var r_selector = randf_range(0,10)
	if  int(r_selector) % 2 == 0:
		column.set_x_up()
	
	column_counter += 1
	
	if column_counter == max_columns:
		timer.stop()

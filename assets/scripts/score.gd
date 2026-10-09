class_name score

extends Control
@onready var counter: TextEdit = $Counter

var count : int = 0

func update_counter() -> void:
	count += 1
	counter.text = " " + str(count)

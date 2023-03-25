@tool
extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var my_plot = $Graph2D.add_plot_item("My Plot", Color.GREEN, 1.0)

	for x in range(0, 11, 1):
		var y = randf_range(-50, 50)
		my_plot.add_point(Vector2(x, y))

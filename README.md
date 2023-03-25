# Graph2D add-on for Godot 4.x

**Graph 2D is an addon able to display plots in your user interface in a very simple way**.

This repository contains the add-on and examples.

## Features

- Display several plots on the same graph.
- Supports curve thickness and color.
- Customizable chart axes (axis label and grid).
- Real-time plotting.
- Works with all renderers.
- Works on desktop platforms and HTML5 (others target were not tested).

## Usage

### Single plot
- Create a new scene with a `Control` type as root node.
    - Attach a script to your root node.
- Add a `Graph2D` node as a child of the root node. Adapt its size to the control.

![Alt text](screenshots/single_plot_scenetree.png)

![Alt text](screenshots/single_plot_2Dview.png)

- Create a new plot using the method `Graph2D.add_plot_item()` from your script. The arguments are in order the name of the plot, its color and finally the thickness of the line.
    - Note: This method will return an `Graph2D.PlotItem` object which will then be used to reference the plot and update its points.

```js
func _ready() -> void:
	var my_plot: Graph2D.PlotItem = $Graph2D.add_plot_item("My Plot", Color.GREEN, 1.0)
```
- Add point with `Graph2D.PlotItem.add_point(Vector coord)` method.

```js
for x in range(0, 11, 1):
	var y = randf_range(0, 1)
	my_plot.add_point(Vector2(x, y))
```
![Alt text](screenshots/single_plot_result.png)

### Multiple plots in graph

You can add multiple curves to the graph.

### Miscellaneous

The graphic can be customized with several properties.

![Alt text](screenshots/graph2d_properties.png)

You can view on the top right of the graphic the coordinates of the plot pointed by the mouse cursor.

![Alt text](screenshots/graphic_customized.png)

## License

Copyright © 2023 Laurent Dethoor

Unless otherwise specified, files in this repository are licensed under the
MIT license. See [LICENSE.md](LICENSE.md) for more information.

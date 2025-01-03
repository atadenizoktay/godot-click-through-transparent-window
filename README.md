# Godot Click Through Transparent Window
This is a demo project for the Godot Engine that features a transparent window with click-through capability and a Godot icon that moves randomly when clicked.

*This branch is compatible with Godot 4.0.2 version. For the version that supports Godot 3.5.2 LTS, please check the `godot-3` branch.*
## How does it work?
In function [`_update_click_polygon`](https://github.com/atadenizoktay/godot-click-through-transparent-window/blob/8895838a68358a21081130610006dd40a61c36a8/src/scenes/godot.gd#L16), the `mouse_passthrough_polygon` property of the window is updated with every physics frame via the `_physics_process` call. Basically, the `mouse_passthrough_polygon` property decides which part of the screen is rendered and clickable at the same time.
## Screenshots
![GIF](https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExNmQ2YjVlNDQxMjg0YjkwNGE0M2NmNjVmM2Y1MGY4MTVjODc1OTg5OCZjdD1n/COJgkxdrHxaAaeFX0W/giphy.gif)
## Usage
This project doesn't add anything directly to the projects it's added to, and there's **no direct use** of this project. You can examine the script files within the project to **see how the implementations work** and apply them to your own projects.
## Licensing
This project is licensed under the MIT License. For further information, please refer to the `LICENSE` file.

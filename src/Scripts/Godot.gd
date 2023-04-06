extends Sprite


# A Godot object that moves randomly around the screen.


onready var _ClickPolygon: CollisionPolygon2D = $"%ClickPolygon"

	
func _physics_process(_delta: float) -> void:
	_update_click_polygon()


# Updates the clickable area, preventing inputs from passing through the
# window outside of the defined region.
func _update_click_polygon() -> void:
	var click_polygon: PoolVector2Array = _ClickPolygon.polygon
	for vec_i in range(click_polygon.size()):
		click_polygon[vec_i] = to_global(click_polygon[vec_i])
	OS.set_window_mouse_passthrough(click_polygon)


# A simple function that changes the position of the Godot icon randomly.
func _on_ClickArea_input_event(_viewport: Node, event: InputEvent,
		_shape_idx: int) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		global_position = Vector2(rand_range(0, OS.window_size.x),
				rand_range(0, OS.window_size.y))

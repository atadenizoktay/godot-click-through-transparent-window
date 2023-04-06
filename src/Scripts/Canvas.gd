extends Node2D


# The main screen the app uses.


func _ready() -> void:
	_initialize_window()
	

func _initialize_window() -> void:
	# You don't need to change these settings via a function during runtime
	# since you can set them from the settings menu at Project ->
	# Project Settings -> Window.
	_update_size_settings()
	_update_transparency_settings()
	

func _update_size_settings() -> void:
	# Note that if f you don't set the window position to something other than
	# the screen size, you'll end up with a black background.
#	var screen_size: Vector2 = OS.get_screen_size()
#	OS.set_window_size(screen_size + Vector2(1, 1))
#	OS.set_window_always_on_top(true)
#	OS.set_borderless_window(true)
	pass
	
	
func _update_transparency_settings() -> void:
	# Enabling Per Pixel Transparency -> Allowed through code doesn't seem to
	# work correctly. Make sure to enable it via the Project Settings menu.
#	ProjectSettings.set_setting("display/window/per_pixel_transparency/allowed", true)
#	OS.set_window_per_pixel_transparency_enabled(true)
	# You'll need to change this setting during runtime as it concerns the
	# root's viewport. If you have multiple viewports in your project, you can
	# modify the additional viewports' settings from the inspector.
	get_tree().get_root().set_transparent_background(true)

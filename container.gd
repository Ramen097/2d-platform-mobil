extends HFlowContainer  # or VFlowContainer or Control, depending on your setup

# Define color for pressed and released states
const COLOR_PRESSED = Color(1, 0, 0)  # Red when pressed
const COLOR_RELEASED = Color(1, 1, 1)  # White when released

func _input(event):
	# Check if the event is a key event
	if event is InputEventKey:
		# Check if the key is pressed
		if event.pressed:
			match event.keycode:  # Use keycode instead of scancode
				KEY_W:
					$ColorW.modulate = COLOR_PRESSED
				KEY_S:
					$ColorS.modulate = COLOR_PRESSED
				KEY_A:
					$ColorA.modulate = COLOR_PRESSED
				KEY_D:
					$ColorD.modulate = COLOR_PRESSED
				KEY_SPACE:
					$ColorSpace.modulate = COLOR_PRESSED
		else:
			# Check if the key is released
			match event.keycode:  # Use keycode instead of scancode
				KEY_W:
					$ColorW.modulate = COLOR_RELEASED
				KEY_S:
					$ColorS.modulate = COLOR_RELEASED
				KEY_A:
					$ColorA.modulate = COLOR_RELEASED
				KEY_D:
					$ColorD.modulate = COLOR_RELEASED
				KEY_SPACE:
					$ColorSpace.modulate = COLOR_RELEASED

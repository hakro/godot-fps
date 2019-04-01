extends Spatial

const MOUSE_SENSITIVITY = 0.001

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		disable_capture()
	pass

func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(-event.relative.x * MOUSE_SENSITIVITY)
		$Camera.rotate_x(-event.relative.y * MOUSE_SENSITIVITY)

func disable_capture():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
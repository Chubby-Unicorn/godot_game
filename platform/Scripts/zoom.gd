extends Camera2D

@export_group("Max Zoom")

@export var max_zoom_in : float
@export var max_zoom_out : float

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_WHEEL_UP :
			$".".zoom.x = 1.5
			$".".zoom.y = 1.5
		if event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
			$".".zoom.x = 1
			$".".zoom.y = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

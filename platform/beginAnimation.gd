extends AnimatedSprite2D
var i : int = 0

func begin_animation():
	$".".play()
		


func _input(event):
	if event is InputEventMouseButton:
		begin_animation()
		

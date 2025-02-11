extends AnimatedSprite2D

func begin_animation():
	$".".play()

func _input(event):
	if event is InputEventMouseButton:
		begin_animation()
		

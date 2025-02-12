extends AnimatedSprite2D

var times_to_play : int = 1

func begin_animation():
	$".".play()
	$"../../Sound Manager".bomb_sound()

func _input(event):
	if event is InputEventMouseButton:
		if times_to_play == 1:
			times_to_play -= 1
			begin_animation()

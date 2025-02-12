extends RigidBody2D

var times_to_play : int = 1

var bomb_timer : float = 3 #in seconds

func begin_animation():
	$Animation.play() #star animation
	$"../Sound Manager".bomb_sound() #star sound
	explode_bomb()
	
func explode_bomb():
	
	await get_tree().create_timer(bomb_timer).timeout #Countdown
	$"../Sound Manager/BombTickSound".stop()
	$"../Sound Manager/ExplosionSound".play()
	
	queue_free()

func _input(event):
	if event is InputEventMouseButton:
		if times_to_play == 1:
			times_to_play -= 1
			begin_animation()

extends RigidBody2D

var times_to_play : int = 1


@export_group("Bomb Settings")
@export var bomb_timer : float #in seconds


func _begin_animation():
	$Animation.play() #star animation
	$"../Sound Manager/Bomb/BombTickSound".play()
	_explode_bomb()
	
	
func _explode_bomb():
	
	await get_tree().create_timer(bomb_timer).timeout #Countdown
	$"../Sound Manager/Bomb/BombTickSound".stop()
	$"../Sound Manager/Bomb/ExplosionSound".play()
	
	queue_free()


func _ready() -> void:
	_begin_animation()
	

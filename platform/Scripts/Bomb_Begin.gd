extends RigidBody2D

var times_to_play : int = 1

@export_group("Bomb Timer in seconds")
@export var bomb_timer : float #in seconds

func _begin_animation():
	$Animation.play() #star animation
	$"../Sound Manager/BombTickSound".play()
	_explode_bomb()
	
func _explode_bomb():
	
	await get_tree().create_timer(bomb_timer).timeout #Countdown
	$"../Sound Manager/BombTickSound".stop()
	$"../Sound Manager/ExplosionSound".play()
	
	queue_free()


func _ready() -> void:
	_begin_animation()
	
	
#This one or
#func _input_event(viewport, event, shape_idx):
#	if event is InputEventMouseButton:
#		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
#			print("You clicked on Sprite!")

#or This one
#func _input(event):
#	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
#		if get_viewport_rect().has_point(to_local(event.position)):
#			pass

#func _input_event(viewport, event, shape_idx):
#	if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
#		if times_to_play == 1:
#			times_to_play -= 1
#			print("bombBegin")
#			_begin_animation()

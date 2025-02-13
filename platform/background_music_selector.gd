extends Node

var to_play : int = randi_range(0,1)

func _ready() -> void:
	
	if to_play == 0:
		$backgroundMusic1.play()
	else:
		$Backgroundmusic2.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass

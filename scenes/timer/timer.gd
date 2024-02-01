extends Node2D

@export var time = 30

func _process(delta):
	$Label.text = "[center]Time Remaining: " + str(floor($Timer.time_left))

func _ready():
	$Timer.set_wait_time(time)
	$Timer.start()

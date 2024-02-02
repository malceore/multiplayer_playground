extends Node2D

@export var time = 30
@export var autostart = false

var times_up = false

func _ready():
	$Timer.set_wait_time(time)
	if autostart:
		$Timer.start()
	
func start():
	$Timer.start()
	print_debug("started!")

func stop():
	$Timer.stop()

func _process(delta):
	$Label.text = "[center]Time Remaining: " + str(floor($Timer.time_left))

func _on_timer_timeout():
	times_up = true

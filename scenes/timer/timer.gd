extends Node2D

func _process(delta):
	$Label.text = "[center]Time Remaining: " + str(floor($Timer.time_left))

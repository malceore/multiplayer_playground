extends Node2D

var itPlayer = null
var notItPlayer = null

func _ready():
	for child in get_children():
		if child.name.contains("Player"):
			if child.it:
				itPlayer = child
			else:
				notItPlayer = child


func _process(delta):
	if $TimerContainer/Timer.time_left == 0:
		$VictoryScreen.winner(notItPlayer.name, notItPlayer.get_node("Body").color)
	if itPlayer.win:
		$VictoryScreen.winner(itPlayer.name, itPlayer.get_node("Body").color)
	

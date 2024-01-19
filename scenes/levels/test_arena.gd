extends Node2D

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $TimerContainer/Timer.time_left == 0:
		$VictoryScreen.winner("Player 2")

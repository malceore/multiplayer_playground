extends Control

func winner(player:String, color):
	$ColorRect/Label.set_text(player+" WINS")
	$ColorRect.color = color
	$TimerContainer.start()
	show()
	
func _process(delta):
	if visible:
		print_debug("I'm visible!")
		if $TimerContainer.times_up:
			startNewGame()

func startNewGame():
	get_tree().reload_current_scene()

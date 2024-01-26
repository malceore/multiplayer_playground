extends Control

func winner(player:String, color):
	$Label.set_text(player+" WINS")
	$ColorRect.color = color
	show()

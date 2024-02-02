extends Node2D

var itPlayer = null
var notItPlayer = null
var playing = true

func _ready():
	for child in get_children():
		if child.name.contains("Player"):
			if child.it:
				itPlayer = child
			else:
				notItPlayer = child

func _process(delta):
	if !playing:
		return
	if $TimerContainer.times_up:
		$VictoryScreen.winner(notItPlayer.name, notItPlayer.get_node("Body").color)
		playing = false
		changeScene("Maze")
		return
	if itPlayer.win:
		$VictoryScreen.winner(itPlayer.name, itPlayer.get_node("Body").color)
		$TimerContainer.stop()
		playing = false
		changeScene("Merrygoround")
		return

func changeScene(sceneName):
	$SceneSwitcher.changeScene(sceneName)

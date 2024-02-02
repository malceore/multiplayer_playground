extends Node

var mazeScene = preload("res://scenes/levels/maze_1/maze_1.tscn")
var merrygoroundScene = preload("res://scenes/levels/merrygoround/merrygoround.tscn")
var testarenaScene = preload("res://scenes/levels/test_arena/test_arena.tscn")


func changeScene(sceneName):
	if sceneName == "Maze":
		get_tree().root.add_child(mazeScene.instantiate())
		return
	if sceneName == "Merrygoround":
		get_tree().root.add_child(merrygoroundScene.instantiate())
		return
	if sceneName == "Testarena":
		get_tree().root.add_child(testarenaScene.instantiate())
		return

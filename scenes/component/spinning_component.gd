extends Node2D

@export var spinSpeed = 0.1
var enabled = true
var target = null

func _ready():
	target = get_parent()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if enabled: 
		target.rotate(spinSpeed)
	
	

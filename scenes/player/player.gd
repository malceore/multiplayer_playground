extends CharacterBody2D

@export var speed = 400
@export var left = "left"
@export var right = "right"
@export var up = "up"
@export var down = "down"
@export var it = false

var win = false

func _ready():
	$Label.text = name
	if it:
		$Body.set_color(Color.RED)

func get_input():
	var input_direction = Input.get_vector(left, right, up, down)
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()

func _on_area_2d_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	var areaName = area.get_parent().name
	if it and areaName.contains("Player"):
		win = true

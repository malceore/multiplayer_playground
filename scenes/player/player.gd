extends CharacterBody2D

@export var speed = 400
@export var left = "left"
@export var right = "right"
@export var up = "up"
@export var down = "down"
@export var it = false

func _ready():
	if it:
		#$Body.add_theme_color_override("RED", Color.RED)
		$Body.theme_override_styles.panel(Color.RED)

func get_input():
	var input_direction = Input.get_vector(left, right, up, down)
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()

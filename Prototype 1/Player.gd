extends CharacterBody2D

const MOVEMENT_SPEED = 100

var x_axis_input : int = 0
var y_axis_input : int = 0
var input_vector : Vector2 = Vector2.ZERO 
var physics_delta : float = 0
func _physics_process(delta):
	physics_delta = delta
	x_axis_input = Input.get_axis("ui_left", "ui_right")
	y_axis_input = Input.get_axis("ui_up", "ui_down")
	
	input_vector = Vector2(x_axis_input, y_axis_input).normalized()
	
	position += input_vector * physics_delta * MOVEMENT_SPEED

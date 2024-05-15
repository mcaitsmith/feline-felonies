extends Node3D

var Main_2D : Main2D = null

@onready var player = $Player

func _physics_process(delta):
	player.position.x = Main_2D.Player.position.x / 100.
	player.position.z = Main_2D.Player.position.y / 100.
	
	if Input.is_action_pressed("ui_accept"):
		player.position.y = 1
	else:
		player.position.y = 0

class_name Main2D

extends Node2D

@onready var Player : CharacterBody2D = $Player

@onready var Enemy = $Enemy

func _ready():
	get_node("/root/Main3D").Main_2D = get_node(".")

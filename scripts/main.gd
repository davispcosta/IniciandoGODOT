extends Node2D

const map_names = { "res://scenes/title_screen.xscn":"title"}

var c
var load_state = 0
var load_timer

func _ready():
	c = get_node("/root/Controller")

	load_timer = get_node("LoadTimer")
	change_map("res://scenes/title_screen.xscn", 0)
	
func change_map(map, cp):
	if (load_state == 0):
		load_state = 1
	elif (load_state == 1):
		load_state = 2
	else:
		load_state = 0


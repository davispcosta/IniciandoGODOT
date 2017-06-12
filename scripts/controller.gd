extends Node

var root

var progress

# LIFE MANAGEMENT
var playerhp
var death = false

# SCENE MANAGEMENT
var current_map = null
var current_map_name = null
var player

# UI 
var ui
var fader
var txt_win

# CAMERA
var camera
var camera_collision
var cam_target = null
 

func _ready():
	var _root = get_tree().get_root()

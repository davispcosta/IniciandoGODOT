extends KinematicBody2D

export(int, 1, 10) var life = 1
var alive = true

func _ready():
	get_node("animMotion").play("default")
	get_node("anim").play("walk")
	
func damage(qnt):
	if !alive:
		return
	life-= qnt
	if life <= 0:
		alive = false 
		get_node("shape").queue_free()
		get_node("anim").play("death")
		yield(get_node("anim"), "finished")
		queue_free()

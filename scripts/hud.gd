extends CanvasLayer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var instance


func _ready():
	pass
	
func setCoins():
	get_node("coins_score").set_text("")
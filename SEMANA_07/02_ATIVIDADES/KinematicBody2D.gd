extends KinematicBody2D


var velocidade = 10
var movimento = Vector2.ZERO
 
func _process(delta):
	movimento.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left")) 
	
	
func _ready():
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

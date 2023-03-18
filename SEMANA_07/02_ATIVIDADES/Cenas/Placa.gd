extends Area2D





# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# faz a cena mudar quando o jogador toca na plaquinha
func _on_Node2D_body_entered(body):
	if body.name == "Jogador":
		get_tree().change_scene("res://Cenas/MundoAzul2.tscn")

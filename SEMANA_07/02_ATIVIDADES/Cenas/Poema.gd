extends Area2D




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#mudança de cena
func _on_Area2D_body_entered(body):
	if body.name == "Jogador": 
		queue_free()
		get_tree().change_scene("res://Cenas/Mensagem.tscn")
	
	

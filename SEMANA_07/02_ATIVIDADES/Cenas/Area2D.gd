extends Area2D


func _ready():
	pass 


#mudança para a cena da mensagem 2

func _on_Area2D_body_entered(body):
	if body.name == "Jogador":
		queue_free()
		get_tree().change_scene("res://Cenas/Mensagem2.tscn")

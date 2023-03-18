extends Node2D



func _ready():
	pass



# faz o jogador voltar ao início se cair no buraco
func _on_Obstaculo_body_entered(body):
	if body.name == "Jogador":
		get_tree().reload_current_scene()



#leva o jogador para a mensagem final
func _on_Interacao_body_entered(body):
	if body.name == "Jogador":
		get_tree().change_scene("res://Cenas/MensagemFinal.tscn")

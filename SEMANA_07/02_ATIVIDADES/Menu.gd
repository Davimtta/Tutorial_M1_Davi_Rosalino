extends Node2D





func _ready():
	pass 


# começa o jogo

func _on_Iniciar_pressed():
	get_tree().change_scene("res://Cenas/História1.tscn")

# leva aos créditos

	


func _on_Creditos_pressed():
	get_tree().change_scene("res://Cenas/Créditos.tscn")

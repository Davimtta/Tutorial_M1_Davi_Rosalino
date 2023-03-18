extends Node2D


func _ready():
	pass 





#mudança para o próximo mundo
func _on_Botao_pressed():
	get_tree().change_scene("res://Cenas/MundoLaranja.tscn")

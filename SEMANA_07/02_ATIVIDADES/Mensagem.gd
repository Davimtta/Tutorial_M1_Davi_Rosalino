extends Node2D



func _ready():
	pass 


#voltando para a cena do Mundo azul

func _on_Button_pressed():
	get_tree().change_scene("res://Cenas/MundoAzul.tscn")

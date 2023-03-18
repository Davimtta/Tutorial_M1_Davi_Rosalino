extends Node2D



func _ready():
	pass 


#retorno ao menu
func _on_Fim_pressed():
	get_tree().change_scene("res://Cenas/Menu.tscn")

extends Node2D


func _ready():
	pass 
	
	
#botao que leva ao menu
func _on_Menu_pressed():
	get_tree().change_scene("res://Cenas/Menu.tscn")

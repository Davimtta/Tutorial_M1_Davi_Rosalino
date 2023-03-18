extends Node2D



func _ready():
	pass



#mudança de cena

func _on_BotaoMenu_pressed():
	get_tree().change_scene("res://Cenas/Menu.tscn")

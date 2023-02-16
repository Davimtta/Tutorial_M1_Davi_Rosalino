extends Node

func _ready():
	$Contador.text = String($"/root/Global".contador)
	
func _on_Mapa_pressed():
	$"/root/Global".contador += 1
	get_tree().change_scene("res://Principal.tscn")

func _on_IMC_pressed():
	$"/root/Global".contador += 1
	get_tree().change_scene("res://IMC.tscn")

func _on_Fatorial_pressed():
	$"/root/Global".contador += 1
	get_tree().change_scene("res://Fatorial.tscn")

func _on_Megasena_pressed():
	$"/root/Global".contador += 1
	get_tree().change_scene("res://Megasena.tscn")

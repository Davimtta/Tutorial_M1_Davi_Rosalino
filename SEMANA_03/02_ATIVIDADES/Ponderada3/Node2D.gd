extends Node2D


# Declaração de variáveis
var simulacao = true
var listaNomes = ['Davi', '\nJoão', '\nBruno', '\nLuigi', '\nMatheus', '\nPedro']
var listaVazia = []

	

func _ready():
	pass 


func _on_Botao1_pressed():
	$Entrada.text = ""
	$Saida/RichTextLabel.text = ""
	$Saida/RichTextLabel.text = String(listaNomes)
	
func _on_Botao2_pressed():
	if simulacao:  
		$Saida/RichTextLabel.text = ""
		listaVazia.append($Entrada.text) 
		$Saida/RichTextLabel.text  = String(listaVazia)
		$Entrada.text = ""
		simulacao = false
	else:
		listaVazia.append("\n" + $Entrada.text)
		$Saida/RichTextLabel.text  = String(listaVazia)
		$Entrada.text = ""

func _on_Botao3_pressed():
	$Entrada.text = ""
	$Saida/RichTextLabel.text = ""
	$Saida/RichTextLabel.text = String('Amo o Godot!')

func _on_Botao4_pressed():
	$Saida/RichTextLabel.text = ""
	$Saida/RichTextLabel.text = String($Entrada.text)
	$Entrada.text = ""



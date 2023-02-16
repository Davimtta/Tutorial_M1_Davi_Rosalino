extends Node2D

var simulacao = false

		
func fat():
	return "CALCULAR O FATORIAL..."

func _ready():
	simulacao = false

func _process(delta):
	if simulacao:
		simulacao = false
		$Saida.text = fat()


func _on_Iniciar_pressed():
	simulacao = true

extends Node2D
var simulacao
var num = []
var sorteado
var quantidade = 5 
func _ready():
	simulacao = false
	
	
func megasena():
	#inserir o código aqui
	while quantidade > 0:
		sorteado = randi()%50+1
		if !num.has(sorteado): num.append(sorteado)
		
		

func _process(delta):
	if simulacao:
		megasena()
		simulacao = false

func _on_Iniciar_pressed():
	simulacao = true

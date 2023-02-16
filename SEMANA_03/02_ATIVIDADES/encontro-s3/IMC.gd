extends Node2D
var simulacao = false
var indice



func imc(indice):
	
	if indice < 19: $Saida.text = "Seu índice de massa corporal é: " + String(indice)  + "\nSua categoria no IMC é magreza"
	elif indice>=19 and indice<=25: $Saida.text = "Seu índice de massa corporal é: " + String(indice) + "\nSua categoria no IMC é normal"
	elif indice>indice and indice<=30: $Saida.text = "Seu índice de massa corporal é: " + String(indice) + "\nSua categoria no IMC é excesso de peso"
	elif indice>30 and indice<=40: $Saida.text = "Seu índice de massa corporal é: " + String(indice) + "\nSua categoria no IMC é obesidade"
	else: $Saida.text = "Seu índice de massa corporal é: " + String(indice) + "\nSua categoria no IMC é obesidade mórbida"
	
func _ready():
	simulacao = false
		
func _process(delta):
	if simulacao:
		var peso = float($RecebePeso.text)
		var altura = float($RecebeAltura.text)
		indice = peso/pow(altura,2)
		imc(indice)
		
		
			
		

func _on_Iniciar_pressed():
	simulacao = true

extends Node2D

var teste = false
var valor = 0 #será uasada no lugar de cont
var numero #não era necessário atribuir valor/ presença do acento
var nome
var lista  = []



func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($RecebeNumero.text) #presença do acento
	nome = str($RecebeNome.text) # a igualdade estava na ordem errada/ e faltou transformar o valor recebido por ela em string

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10): 
		numero+=i #letra maiúscula
	lista.append(numero) #letra maiúscula
		
	$ColorRect/MostraLista.text = str(lista) #transformando em string

	

func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	for i in len(lista): #while por for
		
		if lista[i]%2==1: #parênteses
			nome += " baldo" #substituição por += 
		else: #else no lugar if
			valor += 1 #valor no lugar de cont
		$ColorRect/MostraNome.text = nome
		
#Professor, pelo que interpretei a lista vai sendo sempre incrementada e se houver ALGUM número ímpar nessa lista, será adicionado bald no nome. Estou escrevendo est comentário pois fiquei em dúvida se era pra fazer isso ou não por conta da forma q os comentários estão escritos. Espero que esta maneira seja válida.
		
		

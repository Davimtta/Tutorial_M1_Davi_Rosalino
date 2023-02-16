extends KinematicBody2D
var estado
var velocidade=100
enum MOVIMENTO {ESQUERDA, DIREITA, CIMA, BAIXO}
# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.
func _ready():
	$"/root/Global".passos = 0
	estado = MOVIMENTO.DIREITA


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	var vetor_movimento = Vector2(0,0)
		
	#vetor_movimento.y = Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	#vetor_movimento.x = Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	if(estado == MOVIMENTO.DIREITA):
		vetor_movimento.x += 1
		#print($"Sprite - Personagem".get_position())
		print($"/root/Global".passos)
		if($"/root/Global".passos >= 350):
			estado = 3
			$"/root/Global".passos = 0
	if(estado == MOVIMENTO.BAIXO):
		vetor_movimento.y += 1
		#print($"Sprite - Personagem".get_position())
		print($"/root/Global".passos)
		if($"/root/Global".passos >= 60):
			estado = 4
	
	
	if(vetor_movimento == Vector2.ZERO):
		#Código Parado
		pass
	$"/root/Global".passos += 1
	$"../Posicao".text = String($"/root/Global".passos)	
	move_and_slide(vetor_movimento*velocidade)


func _on_Area2D_body_entered(body):
	$"/root/Global".last_position = self.global_position
	get_tree().change_scene("res://IMC.tscn")

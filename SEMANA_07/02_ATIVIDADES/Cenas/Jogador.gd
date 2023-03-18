extends KinematicBody2D

#declarando que trabalharemos com dois vetores(x,y)
var movimento = Vector2.ZERO

# gravidade, movimentação e pulo
func _process(delta):
	movimento.y += 12
#saber se o jogador está tocando o chão
	if is_on_floor():
		if Input.is_action_pressed("ui_left") or Input.is_action_pressed("ui_right"):
			$AnimatedSprite.play("JogadorAnda")
			
		if Input.is_action_pressed("ui_up"):
			movimento.y = -425
			
		else:
			$AnimatedSprite.play("Jogador_ParadoPula ")
			
	else:
		movimento.y += 12
		
		if Input.is_action_pressed("ui_left") or Input.is_action_pressed("ui_right"):
			$AnimatedSprite.play("JogadorAnda")
		
			
				
	move_and_slide(movimento, Vector2.UP)
	
#movimentação do personagem (esquerda, direita)

	if Input.is_action_pressed("ui_right"):
		movimento.x = 250
		$AnimatedSprite.play("JogadorAnda")
		$AnimatedSprite.flip_h = false
		
	elif Input.is_action_pressed("ui_left"):
		movimento.x = - 250
		$AnimatedSprite.play("JogadorAnda")
		$AnimatedSprite.flip_h = true
					

	else: 
		movimento.x = 0
	
func _ready():
	pass 

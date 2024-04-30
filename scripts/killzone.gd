extends Area2D

@onready var timer = $Timer

# Função que serve para iniciar o temporizador que se inicia
# assim que o jogador cai na killzone
func _on_body_entered(body):
	print("You died!")
	Engine.time_scale = 0.5
	timer.start()
	body.get_node("CollisionShape2D").queue_free()

# Assim que o tempo do timer acaba a fase é reiniciada
func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()

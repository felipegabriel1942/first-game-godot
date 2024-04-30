extends Node

var score = 0

@onready var score_label = %ScoreLabel

func add_point():
	score += 1
	_update_score_label()

func _update_score_label():
	var prefix = '';
	
	if score >= 0 :
		prefix = '00'
	if score >= 10:
		prefix = '0'
		
	score_label.text = 'x' + prefix + str(score)
	


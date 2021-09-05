extends Node2D

func _ready():
	$timer_instructions/button_enter.connect("pressed", self, "load_main_game")
	
	
	
func _input(event):
	if event.is_action_pressed("ui_accept"):
		load_main_game()
					
func load_main_game():
	get_tree().change_scene_to(load("res://fzdMainGame.tscn"))

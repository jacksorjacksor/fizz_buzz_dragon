extends Node

# Variables
const SPEED: int = 75	# variables can be TYPED
var number = SPEED

# Called when the node enters the scene tree for the first time.
func _ready():	# the initialising function
	print(number)
	number = 86
	print(number)
	




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

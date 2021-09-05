extends Node2D

# Variables:
var i: int = 0
var req_result: String

# Read function:
func _ready():
	for n in range(20):
		req_result = fizz_buzz_checker(n+1)
		print(req_result)

func fizz_buzz_checker(req: int):
	# Takes in an int
	# Returns a string
	if req%3==0 and req%5==0:
		return "FizzBuzz"
	elif req%3==0:
		return "Fizz"
	elif req%5==0:
		return "Buzz"
	else:
		return str(req)
	
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

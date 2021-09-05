extends Node2D

var keyclick_sounds : Array
var delete_sounds : Array
var victory_sounds : Array
var defeat_sounds : Array
var dragon_counting_sounds : Array
var dragon_talking_sounds : Array

var sound_index: int
var sound

onready var dragon_counting_stream_player : AudioStreamPlayer2D = $dragon_counting_stream_player
onready var dragon_talking_stream_player : AudioStreamPlayer2D = $dragon_talking_stream_player

# ISSUE: one-shot SFX play stop one another playing (.play() vs .playOneShot in Unity)
# TODO: either find multiple channels OR make separate managers to allow 

func _ready():
	# NOTE: change these to .mp3, shorten tail length
	keyclick_sounds = [
		preload("res://audio/keyclick01.mp3"),
		#preload("res://audio/keyclick02.mp3"),
		#preload("res://audio/keyclick03.mp3"),
		#preload("res://audio/keyclick04.mp3"),
		#preload("res://audio/keyclick05.mp3"),
		#preload("res://audio/keyclick06.mp3"),
		#preload("res://audio/keyclick07.mp3"),
		#preload("res://audio/keyclick08.mp3"),
	]
	
	# will rename files eventually! (HA this will never happen)
	delete_sounds = [
		preload("res://audio/errorclick01.mp3"),
		#preload("res://audio/errorclick02.mp3"),
		#preload("res://audio/errorclick03.mp3"),
		#preload("res://audio/errorclick04.mp3"),
		#preload("res://audio/errorclick05.mp3"),
	]

	defeat_sounds = [
		preload("res://audio/failgong.mp3"),		
	]
	
	victory_sounds = [
		preload("res://audio/victorygong.mp3")
	]
	
	dragon_counting_sounds = [
		preload("res://audio/fizz_buzz_dragon_01.mp3"),
		preload("res://audio/fizz_buzz_dragon_02.mp3"),
		preload("res://audio/fizz_buzz_dragon_03.mp3"),
		preload("res://audio/fizz_buzz_dragon_04.mp3"),
		preload("res://audio/fizz_buzz_dragon_05.mp3"),
		preload("res://audio/fizz_buzz_dragon_06.mp3"),
		preload("res://audio/fizz_buzz_dragon_07.mp3"),
		preload("res://audio/fizz_buzz_dragon_08.mp3"),
		preload("res://audio/fizz_buzz_dragon_09.mp3"),
		preload("res://audio/fizz_buzz_dragon_10.mp3"),
		preload("res://audio/fizz_buzz_dragon_11.mp3"),
		preload("res://audio/fizz_buzz_dragon_12.mp3"),
		preload("res://audio/fizz_buzz_dragon_13.mp3"),
		preload("res://audio/fizz_buzz_dragon_14.mp3"),
		preload("res://audio/fizz_buzz_dragon_15.mp3"),
		preload("res://audio/fizz_buzz_dragon_16.mp3"),
		preload("res://audio/fizz_buzz_dragon_17.mp3"),
		preload("res://audio/fizz_buzz_dragon_18.mp3"),
		preload("res://audio/fizz_buzz_dragon_19.mp3"),
		preload("res://audio/fizz_buzz_dragon_20.mp3"),
		preload("res://audio/fizz_buzz_dragon_21.mp3"),
		preload("res://audio/fizz_buzz_dragon_22.mp3"),
		preload("res://audio/fizz_buzz_dragon_23.mp3"),
		preload("res://audio/fizz_buzz_dragon_24.mp3"),
		preload("res://audio/fizz_buzz_dragon_25.mp3"),
		preload("res://audio/fizz_buzz_dragon_26.mp3"),
		preload("res://audio/fizz_buzz_dragon_27.mp3"),
		preload("res://audio/fizz_buzz_dragon_28.mp3"),
		preload("res://audio/fizz_buzz_dragon_29.mp3"),
		preload("res://audio/fizz_buzz_dragon_30.mp3"),
	]
	
	# These will need to be handled slightly differently
	dragon_talking_sounds = [
		preload("res://audio/fizz-buzz-dragon-intro-sound.mp3"),
		preload("res://audio/fizz_buzz_dragon_no.mp3"),
		preload("res://audio/fizz_buzz_dragon_begin.mp3"),
		preload("res://audio/fizz_buzz_dragon_bobby_newport.mp3"),		
	]

	# dragon_on_load() # This needs to be on the SPLASH screen


func dragon_begin():
	dragon_talking_stream_player.stream = dragon_talking_sounds[2]
	dragon_talking_stream_player.play()
	


func dragon_on_load():
	dragon_talking_stream_player.stream = dragon_talking_sounds[0]
	dragon_talking_stream_player.play()

func dragon_bobby_newport():
	dragon_talking_stream_player.stream = dragon_talking_sounds[3]
	dragon_talking_stream_player.play()


	
func play_sound(sound_array:Array):
	if sound_array.size()>1:
		sound_index = randi() % (sound_array.size() - 1)
	else:
		sound_index = 0
	sound = sound_array[sound_index]
	
	match sound_array:
		keyclick_sounds:
			play_the_sounds($keyclick_stream_player, sound)
		delete_sounds:
			play_the_sounds($delete_stream_player, sound)
		defeat_sounds, victory_sounds:
			play_the_sounds($defeat_victory_stream_player, sound)

func play_the_sounds(stream_player: AudioStreamPlayer2D, audio_track: Resource):
	stream_player.stream = audio_track
	stream_player.play()

func dragon_counting_player(counter: int):
	dragon_counting_stream_player.stream = dragon_counting_sounds[counter]
	dragon_counting_stream_player.play()

func dragon_no_player():
	dragon_talking_stream_player.stream = dragon_talking_sounds[1]
	dragon_talking_stream_player.play()

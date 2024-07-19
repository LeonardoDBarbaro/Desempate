extends Node

# Example of storing a global variable
var nombre : String
var emoticon : String

func _ready():
	nombre = ""
	emoticon = ""

func set_global_data(em,nom):
	emoticon = em
	nombre = nom
	print("si")
	
func get_global_data():
	print(nombre)
	print(emoticon)
	return [nombre,emoticon]

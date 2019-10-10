extends Control

func _ready():
	randomize()
	var Tipos = load("res://Ani tipos sanguineos/" + str(randi()%8 + 1) + ".tscn")
	var alphainstance = Tipos.instance()
	add_child(alphainstance)


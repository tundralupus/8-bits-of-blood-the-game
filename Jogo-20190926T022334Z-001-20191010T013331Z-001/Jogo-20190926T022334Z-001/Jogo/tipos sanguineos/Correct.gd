extends Button

func _ready():
	pass

func _on_Correct_pressed():
	randomize()
	var Tipos = load("res://Ani tipos sanguineos/a" + str(randi()%8 + 1) + ".tscn")
	var alphainstance = Tipos.instance()
	add_child(alphainstance)

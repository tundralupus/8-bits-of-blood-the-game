extends Panel

export var msg = "Oi, tudo bem? Você é novo por aqui certo? Meu nome é João e eu sou o enfermeiro responsável pela coleta de sangue dos voluntários, você vai ficar responsável por separar os tipos sanguíneos que forem coletados, vou deixar na sua caderneta todas as informações do sangue que você precisa pra analisar e separar seus tipos. Lembrando que  o RH mostra se o sangue é positivo ou negativo, os anticorpos combatem o sangue que não pode entrar em sua corrente sanguínea e o antigeno determina se é tipo A ou B, quando não tem significa que é tipo O, boa sorte!"
var l
var Enter

func _ready():
	l = get_node("Label")
	Enter = get_node("Enter")
	show_message(msg)

func show_message(text):
	text = ""
	l.set_text(text)
	if (text.empty()):
		hide()
		return
	l.set_lines_skipped(0)
	l.set_percent_visible(0)
	var percent_per_char = 1.0/float(text.lenght())
	var current = 0
 
extends RichTextLabel
var drawTextSpeed: int = 0
var chatterlimit: int = 10000
func _ready():
	pass
func _showChatter():
	if drawTextSpeed < chatterlimit:
		drawTextSpeed += 1
		self.visible_characters = drawTextSpeed
	pass
func _process(delta):
	_showChatter()
	pass
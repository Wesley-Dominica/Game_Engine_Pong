extends CanvasLayer


var start
var quit
#var defaultFontSize

# Called when the node enters the scene tree for the first time.
func _ready():
	start = $"BoxContainer/Start"
	quit = $"BoxContainer/Quit"
	#defaultFontSize = start.get_theme_font_size("main_menu")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#start.add_theme_font_size_override("hover", defaultFontSize + 16*int(start.is_hovered()))
	#quit.add_theme_font_size_override("hover", defaultFontSize + 16*int(quit.is_hovered()))
	pass

func _on_quit_pressed():
	get_tree().quit()

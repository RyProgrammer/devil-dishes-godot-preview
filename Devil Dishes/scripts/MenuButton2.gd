extends Button

var _menu
var _recipe_manager

# Called when the node enters the scene tree for the first time.
func _ready():
	_menu = get_node("/root/CreateNew/NavBar")
	_recipe_manager = get_node("/root/CreateNew/RecipeManager")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# Open popup menu
func _pressed():
	_menu.visible = !_menu.visible
	
	if !_menu.visible:
		# (_recipe_manager as Panel).rect_size.x = 992
		(_recipe_manager as Panel).rect_position.x = 128
	else:
		# (_recipe_manager as Panel).rect_size.x = 776
		(_recipe_manager as Panel).rect_position.x = 232

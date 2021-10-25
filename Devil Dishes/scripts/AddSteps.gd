extends Button

const MAX = 8

var _ingredients

# Called when the node enters the scene tree for the first time.
func _ready():
	_ingredients = get_node("/root/CreateNew/RecipeManager/Steps/StepsVBox")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _pressed():
	if (_ingredients as VBoxContainer).get_child_count() < MAX:
		var new_ingredient = LineEdit.new()
		new_ingredient.name = "Step" + str((_ingredients as VBoxContainer).get_child_count())
		(_ingredients as VBoxContainer).add_child(new_ingredient)
		print("Added " + new_ingredient.name)

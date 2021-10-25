extends Button

var _ingredients

# Called when the node enters the scene tree for the first time.
func _ready():
	_ingredients = get_node("/root/CreateNew/RecipeManager/Ingredients/IngredientsVBox")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _pressed():
	if (_ingredients as VBoxContainer).get_child_count() > 1:
		var _ingredient = "/root/CreateNew/RecipeManager/Ingredients/IngredientsVBox/Ingredient" + str((_ingredients as VBoxContainer).get_child_count() - 1)
		(_ingredients as VBoxContainer).remove_child(get_node(_ingredient))
		print("Removed Ingredient" + str((_ingredients as VBoxContainer).get_child_count()))

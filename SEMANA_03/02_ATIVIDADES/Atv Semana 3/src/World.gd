extends Node2D


var shopArray = ["Eggs", "Milk", "Meat", "Chocolate"]
var inputArray = []


# Show Filled aray in the first rect
func _on_ShplistButton_pressed():
	$Shoplist/ShplistLabel.text = String(shopArray)

func ValueInput(arg):
	inputArray.push_back(arg)
	
# Input user values to new array
func _on_PushButton_pressed():
	ValueInput($Shoplist2/InsElmnts.text)

# Show user values in the third rect
func _on_NewShplistButton_pressed():
	$Newlist/NewShplistLabel.text = String(inputArray)

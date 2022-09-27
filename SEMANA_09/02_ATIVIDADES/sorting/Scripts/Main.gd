extends Control

var numList = []
var num

# Insert number to list
func InsertNum():
	if len(numList) < 10:
		$CenterContainer/VBoxContainer/Clear.visible = false
		num = float($CenterContainer/VBoxContainer/LineEdit.text)
		numList.append(num)
		Sort(numList)
		Display()
		ClearEdit()
	else:
		ClearEdit()
		$CenterContainer/VBoxContainer/Clear.visible = true
		$"CenterContainer/VBoxContainer/List full".visible = true

# Bubble Sort
func Sort(Sequence):
	
	# Loop until sorted
	for _i in range (len(Sequence)-1):
		var flag = 0
		
		# Compare and change values
		for j in range (len(Sequence)-1):
			if Sequence[j] > Sequence[j+1]:
				var temp = Sequence[j]
				Sequence[j] = Sequence[j+1]
				Sequence[j+1] = temp
				flag = 1
		
		# End loop when sort complete
		if flag == 0:
			break
	return(Sequence)

# Clear lineEdit contents
func ClearEdit():
	$CenterContainer/VBoxContainer/LineEdit.text = ""

# Display sorted list to user
func Display():
	$CenterContainer/VBoxContainer/Label.text = str(numList)

# Insert number via button press
func _on_Button_pressed():
	InsertNum()


func _on_Clear_pressed():
	numList = []
	ClearEdit()
	$CenterContainer/VBoxContainer/Label.text = "(Your number list goes here)"
	$"CenterContainer/VBoxContainer/List full".visible = false

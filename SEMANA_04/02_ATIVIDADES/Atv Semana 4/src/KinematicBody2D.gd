extends KinematicBody2D

var inputVector = Vector2.ZERO
var velocity = Vector2.ZERO
var speed = 400
var valueA = 0
var valueB = 0
var valueC = 0

onready var inventary = [
[get_node("Camera2D/HBoxContainer/VBoxContainer2/ItemA"),
get_node("Camera2D/HBoxContainer/VBoxContainer/QuantA")],
[get_node("Camera2D/HBoxContainer/VBoxContainer2/ItemB"),
get_node("Camera2D/HBoxContainer/VBoxContainer/QuantB")],
[get_node("Camera2D/HBoxContainer/VBoxContainer2/ItemC"),
get_node("Camera2D/HBoxContainer/VBoxContainer/QuantC")]
]

func move():
	inputVector = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	).normalized()
	velocity = inputVector*speed
	velocity = move_and_slide(velocity)
func addA():
	if Input.is_action_just_pressed("ui_a"):
		valueA += 1
		if valueA != 0:
			$Camera2D/HBoxContainer/VBoxContainer2/ItemA.visible = true
			$Camera2D/HBoxContainer/VBoxContainer/QuantA.visible = true
		$Camera2D/HBoxContainer/VBoxContainer/QuantA.text = str(valueA)
func addB():
	if Input.is_action_just_pressed("ui_b"):
		valueB += 1
		if valueB != 0:
			$Camera2D/HBoxContainer/VBoxContainer2/ItemB.visible = true
			$Camera2D/HBoxContainer/VBoxContainer/QuantB.visible = true
		$Camera2D/HBoxContainer/VBoxContainer/QuantB.text = str(valueB)
func addC():
	if Input.is_action_just_pressed("ui_c"):
		valueC += 1
		if valueC != 0:
			$Camera2D/HBoxContainer/VBoxContainer2/ItemC.visible = true
			$Camera2D/HBoxContainer/VBoxContainer/QuantC.visible = true
		$Camera2D/HBoxContainer/VBoxContainer/QuantC.text = str(valueC)
func _physics_process(_delta):
	move()
	addA()
	addB()
	addC()

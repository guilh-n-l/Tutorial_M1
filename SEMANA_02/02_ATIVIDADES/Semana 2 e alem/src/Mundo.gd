extends Node2D

var data1
var data2
var data3
var answer

func _on_Execute_pressed():
	data1 = float($"Data 1".text)
	data2 = float($"Data 2".text)
	data3 = float($"Data 3".text)
	answer = data1 + data2 + data3
	$answer/Label.text = String(answer)
	
	

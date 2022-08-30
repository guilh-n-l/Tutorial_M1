extends Node2D


var teste = false
var valor = 0
var numero = 0 # ERRO: Uso de caractere especial em variável
var lista = [] # ERRO: Falta de 'var' para tornar "lista" em variável
var nome: String
onready var inventario = [
	[get_node("Inventario/Fruit1"),
	get_node("Inventario/Label1")],
	[get_node("Inventario/Fruit2"),
	get_node("Inventario/Label2")],
	[get_node("Inventario/Fruit3"),
	get_node("Inventario/Label3")]]


func _on_Button_pressed(): # ERRO: Falta do node connect
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) # ERRO: Uso de caractere especial em variável e falta de "$"
	nome = $LineEdit.text  # ERRO: nome não definido (Add l08), para coletar dado "nome = lineedit"


func _on_Button2_pressed(): # ERRO: Falta do node connect
#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero += i # Erro: maiusc. ≠ minusc.
		lista.append(numero) # Erro: maiusc. ≠ minusc.
	$Label.text = str(numero) # Erro: "$Label.text" so aceita string ("numero" é int)

func _on_Button3_pressed(): # ERRO: Falta do node connect
	# Mudando o nome do usuário de acordo com os dados da lista
	# Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var cont = 0
	var i = 0
	while(i < len(lista)): # ERRO: Condição não deve ser infinita
#		cont=0 # ERRO: var "cont" não definida e necessária fora do while
#		i=0 # ERRO: var "i" não definida e necessária fora do while
		if(lista[i] % 2 == 1):
			cont += 1
		i += 1 # ERRO: Falta de uma condição para modificar valor de i
	if(cont != 0): # ERRO: Indentação incorreta
		nome = nome + "baldo"
		$Label2.text = nome


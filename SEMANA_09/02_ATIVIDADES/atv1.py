#Algoritmo 1
n=0
for i in range(0,100):
  n+=1
  print(n)

'''
O algorítmo acima é considerado de complexidade O(1)
uma vez que apenas precisa iterar no processo atribuição
de valor à variável (considerando que o range é um
intervalo constante e não recebe valor de entrada)
'''

#Algoritmo 2
nome="TEO"
vet_nome=["T", "E", "O","B", "A", "L", "D", "O"]
while(nome!= "TEOBALDO"):
  while(len(nome)<8):
    nome+=vet_nome[len(nome)]
    print(nome)

'''
O algorítmo acima é considerado da complexidade O(n²)
uma vez que para escrever o "BALDO" ele precisa
iterar na uma condição (ser diferente de
'TEBALDO') e outra 'subcondição' (Ter menos que 8 letras)
'''


#Algoritmo 3
k=100
l=1000000000
soma=k+l
print(soma)

'''
O algorítmo acima é considerado de complexidade O(1)
uma vez que apenas precisa realizar uma operação com
os valores de entrada
'''


#Algoritmo 4
def binary_search(vetor, menor_indice, maior_indice, elemento_procurado):
   if maior_indice >= menor_indice:      
      indice_do_meio = (menor_indice+maior_indice) // 2
      if vetor[indice_do_meio] == elemento_procurado:
        return indice_do_meio
       
      elif vetor[indice_do_meio] > elemento_procurado:
        return binary_search(vetor, maior_indice, indice_do_meio - 1, elemento_procurado)
       
      else:
        return binary_search(vetor, indice_do_meio + 1, maior_indice, elemento_procurado)

'''
O algorítmo acima é considerado de complexidade O(log(n))
uma vez a medida que "n" cresce, a taxa de aumento de tempo
necessário para realizar o algorítmo vai diminuindo (ainda
que esse aumento sempre exista)
'''

  #Algoritmo 5
m=0
n=1000
for i in range (0,n):
  for k in range (0,n):
    for l in range(0,n):
      print(m)
      m+=1

'''
O algorítmo acima é considerado de complexidade O(n³)
uma vez que precisa iterar sob 3 estruturas de repetição
identadas (uma dentro da outra), aumentando o tempo
necessário para realizar o algorítmo exponencialmente
'''
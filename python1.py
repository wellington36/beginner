a = int(input('qual o coeficiente de grau 2? ' ))
b = int(input(',o de grau 1?                 ' ))
c = int(input('e o termo independente:       ' ))

x = -b/(2*a)
y = a*x*x + b*x + c

if a>0 :
	print('o ponto mínimo da fução é ', (x,y))
if a<0 :
	print('o ponto maximo da função é ', (x,y))
if a==0 :
	print('trata-se da equação de uma reta')



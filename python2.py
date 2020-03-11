a, b, c, d = input('me de os coeficientes inteiros de uma equação cubica: ').split(' ')
a, b, c, d = int(a), int(b), int(c), int(d)

x1 = (-(2*b)+(4*b*b-12*a*c)**(1/2))/3*a
x2 = (-(2*b)-(4*b*b-12*a*c)**(1/2))/3*a

y1 = a*x1**3 + b*x1**2 + c*x1 + d
y2 = a*x2**3 + b*x2**2 + c*x2 + d

if a>0 :
	print('tem por ponto de mínimo local', (x1 , y1), 'e por ponto de máximo local', (x2 , y2))
if a<0 :
	print('tem por ponto de máximo local', (x1 , y1), 'e por ponto de mánimo local', (x2 , y2))
if a==0 :
	print('trata-se de uma equação quadratica')


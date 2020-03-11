n = int(input("Digite um número inteiro positivo: "))
cont = True
for a in range(2,int(n/2)+1):
	if n % a == 0:
		cont = False
		break;
if cont == True:
	print('your number is prime')
else:
	print('your number is not prime')

# SITUACIONES PROBLEMATICAS

# EJERCICIO 1
def concatenarNombAp():
    
    print('Esta función pide nombre y apellido por teclado e imprime el nombre completo')

    nombre = input('Ingresa el Nombre: ')
    apellido = input('Ingresa el Apellido: ')

    return f'{nombre} {apellido}'

if __name__ == '__main__':
    print(concatenarNombAp())

# EJERCICIO 2
def calcularPorcentaje():

    print('Función una recibe categoria y devuelve el porcetanje a aplicar')

    categoria = input('Ingresar la categoria: ')

    porc = 0

    if categoria == 'A':
        porc = 1.1
    elif categoria == 'B':
        porc = 1.2
    else:
        porc = 1.05
    
    return porc

if __name__ == '__main__':
    
    precio = float(input('Ingresar el monto: '))

    precioAumento = precio * calcularPorcentaje()

    print(f'El precio con aumento es {precioAumento}')

# EJERCICIO 3

def calcularCubo(numero):

    return ______ __ 3

if __name__ == '__main__':
    
    numero = ____(input('Ingresa el Número para calcular su cubo: '))
    
    print(f'{} elevado al cubo es {__________(_________)}')
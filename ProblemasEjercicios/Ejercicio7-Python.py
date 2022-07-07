# SITUACIONES PROBLEMATICAS

def concatenarNombAp():

    print('Esta función pide nombre y apellido por teclado e imprime el nombre completo')

    nombre = input('Ingresa el Nombre: ')
    apellido = input('Ingresa el Apellido: ')

    return f'{nombre} {apellido}'

if __name__ == '__main__':
    print(concatenarNombAp())
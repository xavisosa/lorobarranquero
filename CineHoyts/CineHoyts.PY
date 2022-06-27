from funciones import *

# FUNCION APP
def app():
    print('🎞️  📽️  CINE HOYTS 🎬 🍿\n')
    print('📆 CARTELERA DEL DÍA 🎫\n')

    cursor = conectar()
    listPeliculas = obtenerPeliculas(cursor)

    for x in listPeliculas:
        print(x)

# INICIAMOS APP
if __name__ == '__main__':
    app()
    
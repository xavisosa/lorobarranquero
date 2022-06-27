from funciones import *

# FUNCION APP
def app():
    print('🎞️  📽️  CINE HOYTS 🎬 🍿\n')
    print('📆 CARTELERA DEL DÍA 🎫\n')

    conn = conectar()
    cursor = conn.cursor()
    
    #listPeliculas = obtenerTodasLasPeliculas(cursor)

    listPeliculas = obtenerPeliculaPorId(cursor)

    for x in listPeliculas:
        print(x)

    listPeliculas = obtenerPeliculaPorAnio(cursor)

    for x in listPeliculas:
        print(x)

    listPeliculas = obtenerPeliculaPorDirector(cursor)

    for x in listPeliculas:
        print(x)

# INICIAMOS APP
if __name__ == '__main__':
    app()
    
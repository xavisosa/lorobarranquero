from funciones import *

# FUNCION APP
def app():
    print('🎞️  📽️  CINE HOYTS 🎬 🍿\n')
    print('📆 CARTELERA DEL DÍA 🎫\n')

    conn = conectar()
    cursor = conn.cursor()
    
    #listPeliculas = obtenerPeliculaPorId(cursor)
    #listPeliculas = obtenerPeliculaPorAnio(cursor)
    #listPeliculas = obtenerPeliculaPorDirector(cursor)
    
    agregarPelicula(cursor)
    
    listPeliculas = obtenerTodasLasPeliculas(cursor)
    for x in listPeliculas:
        print(x)


# INICIAMOS APP
if __name__ == '__main__':
    app()
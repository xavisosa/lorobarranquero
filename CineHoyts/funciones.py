# IMPORTAR LIBRERIA MYSQL
import mysql.connector

# CONEXION A BD
def conectar():
    conn = mysql.connector.connect(
        host = 'localhost',
        user = 'root',
        password = '',
        database = 'cineshoyts'
    )

    if conn:
        print('Work It!')

    return conn

# CONSULTAR BD
def obtenerTodasLasPeliculas(cursor):
    sql = "SELECT * FROM peliculas"
    cursor.execute(sql)

    return cursor.fetchall()

def obtenerPeliculaPorId(cursor):
    id = int(input("Ingresa el ID de la pelicula: "))

    sql = f"SELECT * FROM peliculas WHERE idPelicula = {id}"
    cursor.execute(sql)

    return cursor.fetchall()

def obtenerPeliculaPorAnio(cursor):
    anio = int(input("Ingresa el año de la/s pelicula/s: "))

    sql = f"SELECT * FROM peliculas WHERE anio = {anio}"
    cursor.execute(sql)

    return cursor.fetchall()

def obtenerPeliculaPorDirector(cursor):
    director = input("Ingresa el Director de la/s pelicula/s: ")

    sql = f"SELECT * FROM peliculas WHERE direccion like '%{director}%'"
    cursor.execute(sql)

    return cursor.fetchall()

# INSERT DE PELICULA
def agregarPelicula(cursor):
    idPelicula = int(input('Ingresa '))
    titulo = input('Ingresa ')         
    tituloOriginal = input('Ingresa ') 
    anio = int(input('Ingresa '))           
    certificado = input('Ingresa ')
    duracion = input('Ingresa ')
    genero = input('Ingresa ')
    direccion = input('Ingresa ')
    sinapsis = input('Ingresa ')
    ISAM = input('Ingresa ')
    puntuacionIMBd = float(input('Ingresa '))

    sql = "INSERT INTO peliculas(idPelicula, titulo, tituloOriginal, anio, certificado, duracion, genero, direccion, sinapsis, isam, puntuacionIMBd)"
    sql += "VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
    valores = (idPelicula, titulo, tituloOriginal, anio, certificado, duracion, genero, direccion, sinapsis, ISAM, puntuacionIMBd)

    cursor.executemany(sql, valores)
    print(f'{cursor.rowcount} pelicula guardada!')
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

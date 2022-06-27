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

    return conn.cursor()

# CONSULTAR BD
def obtenerPeliculas(cursor):
    sql = "SELECT * FROM peliculas"
    cursor.execute(sql)

    return cursor.fetchall()

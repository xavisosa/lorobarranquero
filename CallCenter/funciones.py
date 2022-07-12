# Importar libreria MySQL
import mysql.connector

def conectar():
    conn = mysql.connector.connect(
        host = 'localhost',
        user = 'root',
        password = '',
        database = 'callcenter'
    )

    if conn:
        print('Work It!')
        return conn
    else:
        print('Not Work It!')
        return None  


def ingresarConsulta(conn):
    cursor = conn.cursor()
    cliente = input('Ingrese Nombre y Apellido del Cliente: ')         
    telefono = input('Ingrese Número de telefono: ')           
    email = input('Ingrese correo electrónico: ')
    msjConsulta = input('Ingrese su consulta: ')
    empleadoCC = input('Ingrese el empleado del Callcenter:  ')

    sql = "INSERT INTO consultas (Cliente, Telefono, Email, MsjConsulta, EmpleadoCC)"
    sql += " VALUES (%s, %s, %s, %s, %s)"
    valores = (cliente, telefono, email, msjConsulta, empleadoCC)

    cursor.execute(sql, valores)
    conn.commit()
    print(f'{cursor.rowcount} consulta guardada!')

def mostrarConsulta(conn):
    cursor = conn.cursor()
    sql = "SELECT * FROM consultas"
    cursor.execute(sql)
    return cursor.fetchall()

def buscarConsultasPorCod(conn):
    cursor = conn.cursor()
    cod = int(input("Ingresa el codigo del cliente: "))
    sql = f"SELECT * FROM consultas WHERE CodConsulta = {cod}"
    cursor.execute(sql)
    return cursor.fetchall()

def menu():
    print('1 - Mostrar las consultas de los clientes')
    print('2 - Buscar consultas por codigo')
    print('3 - Registrar  una consulta')
    print('0 - Salir de la App')
    rta = int(input('Elegi una opcion: '))
    return rta
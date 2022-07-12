from funciones import *

def app():
    print('CallCenter PedidosYa!')

    conn = conectar()
    if not conn:
        print('En estos momentos no podemos acceder a la BD')
        return

    rta = menu() 

    while rta != 0:
        if rta == 1:
            consultas = mostrarConsulta(conn)
            for c in consultas:
                print(c)       
        elif rta == 2:
            consulta = buscarConsultasPorCod(conn)
            for c in consulta:
                print(c)
        elif rta == 3:
            ingresarConsulta(conn)
        else:
            print('Opcion invalida.')
        rta = menu()
       
    print('Saliendo de a app...')


if __name__ == '__main__':
    app()
    
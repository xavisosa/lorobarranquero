from funciones import *

def app():
    print('CallCenter PedidosYa!')

    conn = conectar()
    if not conn:
        print('En estos momentos no podemos acceder a la BD')
        return

    cursor = conn.cursor()

    rta = menu() 

    while rta != 0:
        if rta == 1:
            mostrarConsulta(cursor)
        elif rta == 2:
            buscarConsultasPorCod(cursor)
        elif rta == 3:
            ingresarConsulta(cursor)
        else:
            print('Opcion invalida.')
        rta = menu()
       
    print('Saliendo de a app...')


if __name__ == '__main__':
    app()
    
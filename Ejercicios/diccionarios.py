datos_clima = {
    "temperatura" : 11.0,
    "problluvias" : 10.0,
    "humerdad" : 66.0, 
    "viento" : 3.0,
    "cuidad" : "Villa Tesei, Buenos Aires",
    "dia" : "lunes",
    "clima" : "parcialmente nublado",
}

print(datos_clima)

print(datos_clima["humedad"])

print(datos_clima.get("dia"))

#agregar una clave : valor 
datos_clima.update({"hora" : 22})
# o actualizar un valor
datos_clima["viento"] = 5
datos_clima.update({"viento" : 5})

print(datos_clima)

for x in datos_clima:
    print(x)
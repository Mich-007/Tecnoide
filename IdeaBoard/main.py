# Codigo con el wifi funcional
import socketpool
import wifi
import adafruit_dht
import board
import time

# Inicializar AP
wifi.radio.start_ap(ssid="ESP32IDEABOARD", password="12345678")
print("AP IP:", wifi.radio.ipv4_address_ap)

# Inicializar sensor
dht = adafruit_dht.DHT11(board.IO5)

# Crear pool de sockets
pool = socketpool.SocketPool(wifi.radio)

# Crear socket de escucha
server = pool.socket(pool.AF_INET, pool.SOCK_STREAM)
server.bind(("0.0.0.0", 80))  # Puerto 80 para HTTP
server.listen(1)
print("Servidor HTTP listo en puerto 80")

def get_sensor_data():
    try:
        temperature = dht.temperature
        humidity = dht.humidity
        return f"{{\"temperature\": {temperature}, \"humidity\": {humidity}}}"
    except Exception as e:
        return f"{{\"error\": \"{e}\"}}"

while True:
    conn, addr = server.accept()
    print("Conexión desde:", addr)

    buffer = bytearray(1024)
    bytes_read = conn.recv_into(buffer)
    request = buffer[:bytes_read].decode("utf-8")

    print("Petición recibida:")
    print(request)

    response_data = get_sensor_data()
    response = f"""HTTP/1.1 200 OK
Content-Type: application/json

{response_data}
"""
    conn.send(response.encode())
    conn.close()
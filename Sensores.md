 Sensores y Componentes – Proyecto Tecnoide

Este proyecto integra **módulos de hardware cuidadosamente seleccionados** para cumplir con los objetivos de detección, interacción y procesamiento en tiempo real.  
A continuación, se detallan los componentes utilizados y su función dentro del sistema.

---
 **Lista de Sensores y Componentes**

 **ESP32 – Unidad de Control Principal**
- **Rol:** Microcontrolador encargado de leer sensores, procesar datos iniciales y comunicarse con la IA.  
- **Ventajas:**
  - Conectividad Wi-Fi y Bluetooth.
  - Bajo consumo energético.
  - Capacidad de manejar múltiples periféricos.

---

 **Sensor de Humedad y Temperatura (DHT22 / similar)**
- **Rol:** Monitorizar condiciones ambientales (humedad relativa y temperatura).
- **Uso en el proyecto:**
  - Ajustes de funcionamiento según ambiente.
  - Protección y alerta de cambios extremos.

---

**Sensor de Gases (MQ-2 / MQ-135 u otro)**
- **Rol:** Detección de gases peligrosos o contaminantes.
- **Gases típicos:** CO, CH₄, LPG, humo.
- **Uso en el proyecto:**
  - Seguridad y activación de protocolos de alarma.
  - Datos para análisis en la IA.

---

**Fotocelda / LDR (Sensor de Luz)**
- **Rol:** Medir la intensidad de luz ambiental.
- **Uso en el proyecto:**
  - Ajuste dinámico de iluminación en pantalla.
  - Respuesta a condiciones de iluminación extremas.

---

**Teclado Matricial 4x4**
- **Rol:** Interfaz de entrada manual para control de parámetros o ingreso de datos.
- **Uso en el proyecto:**
  - Ajuste de configuraciones.
  - Interacción directa con el prototipo.

---

**Pantalla LCD (I2C)**
- **Rol:** Mostrar información en tiempo real.
- **Uso en el proyecto:**
  - Visualización de valores de sensores.
  - Mensajes de estado o alertas.

---

**Soporte de Inteligencia Artificial**
Para la **ejecución y soporte de la IA**, debido a los requerimientos de procesamiento, se utilizó un:
- **Intel NUC**  
  - Mini-PC de alto rendimiento.
  - Capaz de correr modelos IA en tiempo real y comunicar resultados al ESP32.

---
 **Integración General**
```plaintext
[ Sensores ] → [ ESP32 ] → [ Comunicación ] → [ IA en NUC ] → [ Respuesta en LCD / Acciones ]

# TECNOIDE – Olimpiadas de Programación CENFOTEC 2025  

> **Proyecto oficial del equipo Tecnoide** para competir en las Olimpiadas de Programación de CENFOTEC 2025.  
Aquí documentamos todo: idea, arquitectura, desarrollo, prototipo, código y entregables.  

---

## 👥 **Equipo Tecnoide**
| Rol                | Integrante                      |
|--------------------|---------------------------------|
| Desarrollo IA (SW) | Santiago Chacón Castillo        |
| Desarrollo IA (SW) | Alejandro Jiménez Segura        |
| Prototipo (HW)     | Michelle Gutierrez Araya (Lider)|
| Prototipo (HW)     | Keylor Muñoz Soto               |

---

##  **Descripción y Justificación**
Desarrollar un **prototipo innovador con IA integrada** para resolver el reto propuesto en las Olimpiadas, optimizando:
- Problema que se aborda:
La falta de conocimiento al estar en una situacion de emergencia y supervivencia puede aumentar inecesariamente el peligro o incluso puede marcar el riezgo de muerte
(como lo puede ser desde un desastre natural o un error de riesgo en una mina o de apoyo en deportes extremos/alto rendimineto en zonas riesgozas)
  
- Importancia y contexto:
 Asistencia personalizada de superviviencia y emergencia

- Usuarios/beneficiarios: 
Toda persona se puede ver beneficiada tomando en cuenta que incluso se podría usar para personas que quieran aprender a responder antes situaciones de emergencia o supervivencia, incluso para camping o para grupos de boy scouts.

Ahora, es útil que tambien un solo dispositivo no sea usado unicamente por un individuo o familia, la idea es que sea usado para grupos grander o grupos que afrontan situaciones de riesgo (por trabajo/hobbie/deporte de riesgo/etc...) :

  - Centros de refugio despues de algun desastre natural
  - zonas seguras en lugares con alta concentración poblacional
  - centro de hobbies/deporte de riesgo
  - Incluso si se adapta se puede llevar a estaciones en el espacio o misiones (en caso de que falle la propia red que ellos tienen)
  - Etc...

---

##  **Objetivo**
**General:**
Desarrollar un dispositivo innovador portatil integrado de asistencia para la supervivencia en caso de emergencias usando la inteligencia artificial.
**Específicos:**
  - Diseñar un asistente portatil para la supervivencia integrado con IA con un funcionamiento completamente independiente de redes wifi.
  - Establecer un sistema con IA que genere respuestas coherentes y especificas para cada situación dada al asistente.
  - Componer un dispositivo integrado que optimice la extracción de información del ambiente mediante sensores con la ayuda del microcontrolador y la IA.

---

##  **Requisitos Iniciales**
Lista breve de lo que el sistema debe lograr:
    - Funcionar sin necesidad de conectarse a niguna red
    - Que obtenga información obtenida de los sensores y usuario
    - Respuesta acorde a la situación
   
---

##  **Plan de trabajo**
Cronograma preliminar:
Es la imagen subida en los archivos llamada "Cronograma preliminar", en esa imagen se detalla como trabajaremos

Riesgos identificados y mitigaciones:

Protabilidad: Se realizará de manera que se comprima lo más posible el prototipo y señalaremos las opciones que lo compactarían más, mostrando igualmente el mejor prototipo que podamos realizar con los materiales y tecnología que tenemos acceso
La IA pesada, pero necesaria: Se trabaja con una IA que use el minimo de memoría que pueda, pero que sea capaz de dar una respuesta personalizada y compleja, finalmente decidiendo usar un NUC (debido a que tenemos una aunque no es un modelo actual) para que unicamente soporte la IA
---

##  **Arquitectura del Proyecto**
Dentro de los archivos subidos, mostramos componentes que vamos a usar, una imagen de estos en simulador (esquemas) y tambien como se esta trabajando la IA

El proyecto combina **hardware** y **software**:

```plaintext
Sensores (HW) → Microcontrolador (ESP32/RPi) → IA (SW) → Respuesta / Acción



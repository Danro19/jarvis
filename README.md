<h1 align="center">Jarvis</h1>

<div align="center">
  <img src="img/jarvis_logo_resized.png" alt="Logo de Jarvis" width="300">
</div>

**Jarvis** es un asistente basado en la terminal, diseñado para automatizar tareas repetitivas en los computadores de Campuslands. 🚀

<img src="https://readme-typing-svg.demolab.com?font=Oxanium&weight=500&size=26&duration=3000&pause=300&color=EBEBFF&background=010B13&vCenter=true&width=1000&height=100&lines=%F0%9F%9A%80+Automatiza%2C+ahorra+tiempo+y+optimiza+tu+flujo+de+trabajo%E2%80%A6;%F0%9F%94%A5+Jarvis+hace+el+trabajo+tedioso+por+ti%2C+con+solo+un+comando%E2%80%A6;%F0%9F%96%A5%EF%B8%8F+Personaliza+tu+entorno+y+olv%C3%ADdate+de+configuraciones+manuales%E2%80%A6;%F0%9F%94%92+Seguridad+y+limpieza+garantizadas+al+final+de+cada+sesi%C3%B3n%E2%80%A6;%E2%9C%A8+Adi%C3%B3s+al+desorden%2C+hola+a+la+eficiencia+con+Jarvis%E2%80%A6;%F0%9F%92%A1+Simplifica+tareas+repetitivas+y+enf%C3%B3cate+en+lo+que+realmente+importa%E2%80%A6;%F0%9F%A4%96+Jarvis%2C+tu+asistente+en+la+terminal%2C+siempre+listo+para+ayudarte%E2%80%A6" alt="Frases: Automatiza, ahorra tiempo y optimiza tu flujo de trabajo. Jarvis hace el trabajo tedioso por ti, con solo un comando. Personaliza tu entorno y olvídate de configuraciones manuales. Seguridad y limpieza garantizadas al final de cada sesión. Adiós al desorden, hola a la eficiencia con Jarvis. Simplifica tareas repetitivas y enfócate en lo que realmente importa. Jarvis, tu asistente en la terminal, siempre listo para ayudarte."/>

---

## ✨ Funcionalidades

- 🧹 **Limpieza**: Elimina archivos de usuarios anteriores.
- 🌐 **Navegador predeterminado**: Configura automáticamente el navegador basado en la última elección del usuario.
- 🔑 **Sincronización GitHub**: Conecta GitHub mediante una llave SSH.
- 📦 **Instalación de Node.js**.
- 🎨 **Personalización**: Modifica la estética de la terminal a tu gusto.
- 🖼 **Cambio de fondo**: Ajusta el fondo de pantalla del computador.
- 🤖 **Calificación automática**: Evalúa clases de Software Skills y Ser.
- 📝 **Obsidian**: Descarga e inicia la aplicación (*ideal para apuntes en Markdown*).
- 🗑 **Limpieza total**: Borra archivos, sesiones y rastros del usuario.
- ⏳ **Apagado automático** del computador.

---

## 🚀 Instalación y Configuración

### 1️⃣ Configurar variables
Al descargar Jarvis, verás en las primeras líneas del código variables globales:

```bash
          # Variables Globales:

    # --- Configuración de GitHub ---

# Tu correo electrónico asociado a GitHub:
GITHUB_EMAIL="lorem@gmail.com"

# Tu nombre de usuario en GitHub:
GITHUB_USERNAME="myUserName"

# Enlace SSH del repositorio que deseas clonar por defecto:
GITHUB_REPO="https://github.com/myUsername/lorem.git"

  # --- Personalización del PC ---

# URL de la imagen que se usará como fondo de pantalla.  
IMAGE_URL="https://background.com/myBackground"

  # --- Personalización de la terminal ---

# Color de fondo de la terminal en formato RGB o hexadecimal(#):
BACKGROUND_COLOR="#000000"

# Nivel de transparencia del fondo de la terminal (0-100):
BACKGROUND_TRANSPARENCY_PERCENT=17

# Tipo y tamaño de fuente para la terminal:
FONT="Monospace 12"

# Color del texto en la terminal en formato RGB o hexadecimal(#):
FOREGROUND_COLOR="rgb(255,255,255)"
```

Completa estas variables con la información requerida para personalizar Jarvis a tu gusto.

### 2️⃣ Dar permisos de ejecución
Ejecuta el siguiente comando en la terminal:
```bash
chmod +x jarvis.sh
```

---

## ⚙️ Protocolos disponibles

### 🔹 **Protocolo de bienvenida**
📌 Comando:
```bash
./jarvis.sh hello
```
✅ Funciones:
- 🧹 Limpia la carpeta de descargas.
- 🖼 Cambia el fondo de pantalla.
- 🎨 Personaliza la terminal.
- 🧑‍💻 Limpia VS Code (elimina extensiones y configuraciones previas).
- 🌐 Configura Google Chrome como navegador predeterminado.
- 🔑 Modifica `~/.gitconfig` con tus datos.
- 🔗 Vincula GitHub mediante SSH.
- 📦 Instala Node.js.

---

### 📝 **Protocolo Obsidian**
📌 Comando:
```bash
./jarvis.sh obsidian
```
✅ Funciones:
- 📥 Descarga la aplicación Obsidian.
- 🚀 Abre Obsidian automáticamente.

---

### 😃 **Jarvis Happy Mode**
📌 Comando:
```bash
./jarvis.sh happy
```
✅ Funciones:
- 😃 Califica automáticamente las clases de Software Skills y Ser con caritas felices.

---

### 🔻 **Protocolo de despedida**
📌 Comando:
```bash
./jarvis.sh bye
```
✅ Funciones:
- ❌ Elimina la llave SSH vinculada en el protocolo de bienvenida.
- 🚪 Cierra sesión en VS Code.
- 🔍 Borra datos de sesión en navegadores Firefox y Chrome.
- 🗑 Elimina todos los archivos en la carpeta Descargas.
- 🧑‍💻 Borra la información de `~/.gitconfig`.
- 📜 Elimina el historial de comandos de la terminal.
- ⏳ Programa el apagado del computador en 10 segundos.
- 💣 **Jarvis se autodestruye.**

---

<p align="center">¡Disfruta la automatización con Jarvis! 😎🔥</p>
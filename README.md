# Configurar Nano

<p align="center">
  <img src="https://raw.githubusercontent.com/panxos/ConfServerDebian/main/panxos_logo.png" alt="PanXOS Logo" width="200"/>
</p>

## Descripción

Este script automatiza la configuración del editor de texto Nano en sistemas Unix/Linux. Mejora la experiencia de usuario al habilitar características útiles y añadir resaltado de sintaxis para lenguajes de programación comunes.

## Características

- ✨ Habilita el soporte para el mouse
- 🔢 Muestra los números de línea
- 🌈 Añade resaltado de sintaxis para Python y JavaScript
- 💾 Crea una copia de seguridad de la configuración original
- ↩️ Permite restaurar la configuración original fácilmente

## Requisitos

- Sistema operativo Unix/Linux
- Nano editor instalado
- Permisos de escritura en el directorio home del usuario

## Instalación y Uso

### Opción 1: Clonar el repositorio

1. Clona este repositorio:
   ```bash
   git clone https://github.com/panxos/Configurar_Nano.git
   ```
2. Navega al directorio del proyecto:
   ```bash
   cd Configurar_Nano
   ```
3. Dale permisos de ejecución al script:
   ```bash
   chmod +x configurar_nano.sh
   ```
4. Ejecuta el script:
   ```bash
   ./configurar_nano.sh
   ```

### Opción 2: Ejecutar directamente desde internet

Puedes ejecutar el script directamente sin clonar el repositorio usando el siguiente comando:

```bash
curl -sSL https://raw.githubusercontent.com/panxos/Configurar_Nano/main/configurar_nano.sh | bash
```

> ⚠️ **Advertencia**: Siempre revisa el contenido de un script antes de ejecutarlo directamente desde internet.

### Restaurar la configuración original

Para restaurar la configuración original de Nano:

```bash
./configurar_nano.sh --restaurar
```

O si lo ejecutas directamente desde internet:

```bash
curl -sSL https://raw.githubusercontent.com/panxos/Configurar_Nano/main/configurar_nano.sh | bash -s -- --restaurar
```

## Funcionamiento

1. El script verifica la existencia del archivo de configuración de Nano (`~/.nanorc`).
2. Crea una copia de seguridad de la configuración existente.
3. Añade nuevas configuraciones para mejorar la usabilidad.
4. Configura el resaltado de sintaxis para Python y JavaScript.

## Contribuciones

Las contribuciones son bienvenidas. Por favor, abre un issue para discutir cambios mayores antes de crear un pull request.

## Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo `LICENSE` para más detalles.

## Autor

PanXOS - [GitHub](https://github.com/panxos)

---

<p align="center">
  <sub>¡Haz que tu experiencia con Nano sea más agradable y productiva!</sub>
</p>

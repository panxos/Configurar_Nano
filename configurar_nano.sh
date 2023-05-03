#!/bin/bash

# Guardar la ruta del archivo de configuración de Nano en una variable
NANO_CONF="$HOME/.nanorc"

# Crear un archivo de configuración de Nano si no existe
if [ ! -f "$NANO_CONF" ]; then
    touch "$NANO_CONF"
fi

# Crear una copia de seguridad del archivo de configuración original, si no existe
if [ ! -f "${NANO_CONF}.bak" ]; then
    cp "$NANO_CONF" "${NANO_CONF}.bak"
fi

# Función para restaurar la configuración original de Nano
restaurar_conf_original() {
    cp "${NANO_CONF}.bak" "$NANO_CONF"
    echo "Configuración de Nano restaurada a la original."
}

# Opción para restaurar la configuración original de Nano
if [ "$1" == "--restaurar" ]; then
    restaurar_conf_original
    exit 0
fi

# Habilitar el soporte para el mouse
echo "set mouse" >> "$NANO_CONF"

# Mostrar las líneas del archivo
echo "set linenumbers" >> "$NANO_CONF"

# Configurar colores para distintos lenguajes de programación
echo "syntax \"python\" \"\\.py$\"" >> "$NANO_CONF"
echo "color green \"import|from|def|class|try|except|raise\"" >> "$NANO_CONF"
echo "color blue \"if|elif|else|while|for|in|return|with\"" >> "$NANO_CONF"
echo "color red \"\\\"(\\\\.|[^\\\\\"])*\\\"|'(\\\\.|[^\\\\'])*'\"" >> "$NANO_CONF"
echo "color magenta \"#.*$\"" >> "$NANO_CONF"

echo "syntax \"javascript\" \"\\.js$\"" >> "$NANO_CONF"
echo "color green \"import|export|function|class|try|catch|throw\"" >> "$NANO_CONF"
echo "color blue \"if|else|while|for|in|return|switch|case|default\"" >> "$NANO_CONF"
echo "color red \"\\\"(\\\\.|[^\\\\\"])*\\\"|'(\\\\.|[^\\\\'])*'|/\\*([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+/\"" >> "$NANO_CONF"
echo "color magenta \"//.*$\"" >> "$NANO_CONF"

echo ""
echo "  ____                       _       _"
echo " |  _ \ __ _ _ __  _ __   __| |_ __ (_)_ __  _   ___  __"
echo " | |_) / _\` | '_ \| '_ \ / _\` | '_ \| | '_ \| | | \ \/ /"
echo " |  __/ (_| | | | | | | | (_| | | | | | | | | |_| |>  <"
echo " |_|   \__,_|_| |_|_| |_|\__,_|_| |_|_|_| |_|\__,_/_/\_\\"
echo ""
echo "Configuración de Nano actualizada."
echo "Creado por Panxos"
echo "Cualquier duda o consulta: faravena@soporteinfo.net"
echo "https://github.com/panxos"



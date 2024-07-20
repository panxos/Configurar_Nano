#!/bin/sh

# Guardar la ruta del archivo de configuración de Nano en una variable
NANO_CONF="$HOME/.nanorc"

# Verificar si el directorio home existe y es accesible
if [ ! -d "$HOME" ]; then
    echo "Error: El directorio home no existe o no es accesible."
    exit 1
fi

# Crear un archivo de configuración de Nano si no existe
if [ ! -f "$NANO_CONF" ]; then
    touch "$NANO_CONF" || { echo "Error: No se pudo crear el archivo de configuración."; exit 1; }
fi

# Crear una copia de seguridad del archivo de configuración original, si no existe
if [ ! -f "${NANO_CONF}.bak" ]; then
    cp "$NANO_CONF" "${NANO_CONF}.bak" || { echo "Error: No se pudo crear la copia de seguridad."; exit 1; }
fi

# Función para restaurar la configuración original de Nano
restaurar_conf_original() {
    cp "${NANO_CONF}.bak" "$NANO_CONF" || { echo "Error: No se pudo restaurar la configuración original."; exit 1; }
    echo "Configuración de Nano restaurada a la original."
}

# Opción para restaurar la configuración original de Nano
if [ "$1" = "--restaurar" ]; then
    restaurar_conf_original
    exit 0
fi

# Función para agregar una línea si no existe
agregar_linea() {
    grep -qF -- "$1" "$NANO_CONF" || echo "$1" >> "$NANO_CONF"
}

# Agregar configuraciones
agregar_linea "set mouse"
agregar_linea "set linenumbers"

# Configurar colores para distintos lenguajes de programación
cat << EOF >> "$NANO_CONF"
syntax "python" "\\.py$"
color green "import|from|def|class|try|except|raise"
color blue "if|elif|else|while|for|in|return|with"
color red "\"(\\\\.|[^\\\\\"])*\"|'(\\\\.|[^\\\\'])*'"
color magenta "#.*$"

syntax "javascript" "\\.js$"
color green "import|export|function|class|try|catch|throw"
color blue "if|else|while|for|in|return|switch|case|default"
color red "\"(\\\\.|[^\\\\\"])*\"|'(\\\\.|[^\\\\'])*'|/\\*([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+/"
color magenta "//.*$"
EOF

echo ""
echo "  ____              __  ______  _____ "
echo " |  _ \ __ _ _ __   \ \/ / __ \/ ____|"
echo " | |_) / _\` | '_ \   \  / |  | \____ \\"
echo " |  __/ (_| | | | |  /  \ |__| |____) |"
echo " |_|   \__,_|_| |_| /_/\_\____/|_____/ "
echo ""
echo "Configuración de Nano actualizada."
echo "Creado por Panxos"
echo "https://github.com/panxos"

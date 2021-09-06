# braille
Conversor Braille español para Bash

Pasa texto a braille o lee caracteres braille
ejemplo:
```sh
> ./braile.sh --crear "Hola Juan Carlos"
⠨⠓⠕⠇⠁⠀⠨⠚⠥⠁⠝⠀⠨⠉⠁⠗⠇⠕⠎

> ./braile.sh --leer ⠨⠥⠝⠀⠛⠥⠎⠞⠕⠀⠉⠕⠝⠕⠉⠑⠗⠞⠑
Un gusto conocerte
```

## Requisitos
- Necesita tener instalado JQ. En un sistema basado en apt puedes escribir
```sh
> sudo apt-get install jq
```
- El archivo braile.sh necesita tener permisos de ejecución o ser ejecutado a travez de source. Puedes agregar permisos de ejecución escribiendo:
```sh
> chmod u+x braile.sh
```


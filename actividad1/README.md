# Tipos de Kernel

**Kernel monolítico:** Es el tipo de kernel más antiguo y sencillo. Se compone de un único módulo que contiene todo el código del kernel. Es compacto y eficiente, pero difícil de mantener y depurar.

**Kernel modular:** Es un tipo de kernel más moderno. Se compone de varios módulos independientes que pueden cargarse y descargarse según sea necesario. Es flexible y extensible, pero complejo.

**Kernel microkernel:** Es un tipo de kernel que se centra en proporcionar los servicios básicos necesarios para el sistema operativo. Los servicios más avanzados se dejan en manos de los módulos de usuario. Es pequeño y eficiente, pero menos seguro.

# User vs Kernel Mode

**Modo de usuario:** Es el estado en el que se ejecutan los programas de usuario. Los programas en modo de usuario tienen acceso limitado a los recursos del sistema.

**Modo de kernel:** Es el estado en el que se ejecuta el kernel del sistema operativo. El kernel tiene acceso completo a los recursos del sistema.

# Interrupciones vs trampas

**Interrupción:** Es un evento externo que provoca que el kernel suspenda la ejecución del programa actual y comience a ejecutar un manejador de interrupción.

**Trampa:** Es una instrucción especial que provoca que el kernel suspenda la ejecución del programa actual y comience a ejecutar un manejador de trampa.

## Diferencias entre interrupciones y trampas:

- **Interrupciones:**
  - Eventos externos
  - Causadas por eventos relacionados con el hardware

- **Trampas:**
  - Instrucciones especiales
  - Utilizadas por los programas de usuario para solicitar servicios del kernel

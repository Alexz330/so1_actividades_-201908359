
El Completely Fair Scheduler (CFS) es el planificador de procesos predeterminado del kernel de Linux desde la versión 2.6.23. Fue diseñado para ser un planificador más justo y eficiente que sus predecesores. A continuación, se describen algunas de sus principales características y su funcionamiento:

1. **Modelo de programación basado en tiempo real virtual**: El CFS asigna a cada tarea un tiempo virtual de ejecución y la programa en función de este tiempo, en lugar de utilizar una prioridad estática. De esta manera, garantiza un reparto equitativo del tiempo de CPU entre todas las tareas.

2. **Árbol jerárquico de entidades programables**: Las tareas se organizan en un árbol jerárquico de "entidades programables", donde cada entidad representa un conjunto de tareas relacionadas. Cada entidad tiene asignado un determinado tiempo de CPU, que se distribuye entre sus tareas hijas.

3. **Equilibrio de carga automático**: El CFS realiza un equilibrio de carga automático entre las CPUs disponibles, redistribuyendo las tareas de manera que se mantenga un reparto justo del tiempo de CPU en todo el sistema.

4. **Planificación por grupos**: El CFS permite agrupar tareas relacionadas y establecer diferentes parámetros de planificación para cada grupo, como el peso relativo o la proporción de tiempo de CPU asignado.

5. **Política de envejecimiento de prioridad**: Utiliza una política de envejecimiento de prioridad para evitar la inanición de las tareas de menor prioridad. Después de un cierto tiempo, las tareas de baja prioridad ven incrementada su prioridad relativa para asegurar que eventualmente reciban tiempo de CPU.

6. **Gestión de la latencia de despertares**: El CFS implementa técnicas para reducir la latencia de los despertares (wake-ups) de las tareas, minimizando así los retrasos en la respuesta del sistema.

El funcionamiento del CFS se basa en un árbol rojo-negro, donde cada nodo representa una entidad programable. Cada vez que se produce un evento de planificación (como el bloqueo o desbloqueo de una tarea), el CFS recalcula el tiempo virtual de ejecución de las entidades afectadas y selecciona la tarea con el menor tiempo virtual para ejecutarla.

En resumen, el Completely Fair Scheduler de Linux tiene como objetivo principal proporcionar un reparto justo del tiempo de CPU entre todas las tareas del sistema, utilizando un modelo de programación basado en tiempo real virtual y una estructura jerárquica de entidades programables.

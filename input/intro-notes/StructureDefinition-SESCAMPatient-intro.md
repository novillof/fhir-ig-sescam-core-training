### Propósito

Este perfil define el recurso `Patient` para el ámbito del Servicio de Salud de Castilla-La Mancha (SESCAM), alineado con el perfil europeo EU Core Patient. Su objetivo es asegurar una identificación consistente del paciente y una representación homogénea de sus datos demográficos en los sistemas del SESCAM y en intercambios transfronterizos.

### Alcance y correspondencia

- **Base**: `EU Core Patient`.
- **Ámbito**: escenarios asistenciales y administrativos dentro del SESCAM y del SNS.
- **Compatibilidad**: mantiene compatibilidad con EU Core para favorecer la interoperabilidad regional, nacional y europea.

### Elementos clave perfilados

- **name**: se restringe a usar el perfil `HumanName` de SESCAM/EU para garantizar una representación normalizada de nombres y apellidos.
- **identifier**: se aplica un slicing por `type` (regla abierta) para permitir múltiples identificadores con significado claro y estable.
- **Must Support (MS)**: se marcan como de soporte obligatorio aquellos elementos considerados críticos para la identificación y trazabilidad.

### Identificadores del paciente

El perfil define los siguientes slices de `identifier` (discriminados por `type`):

- **nif (0..1, MS)**: NIF/NIE. `type` con patrón `NNESP`.
- **nass (0..1, MS)**: Número de afiliación a la Seguridad Social. `type` con patrón `SS`.
- **cipSns (0..*, MS)**: Código de identificación personal del SNS. `type` con patrón `HC`.
  - Se recomienda usar `identifier.use` para distinguir el CIP en vigor (`usual`) de códigos previos (`old`).
- **nhc (0..*, MS)**: Número de historia clínica. `type` con patrón `MR`.

Notas:
- El slicing es abierto para permitir otros identificadores locales si fuese necesario, manteniendo la discriminación por `type`.
- Los `^short` proporcionan ayudas de visualización para implementadores y usuarios.

### Recomendaciones de implementación

- Mantener la coherencia del `identifier.type` con los sistemas de codificación acordados (p. ej., Identificador de tipo de documento, SS, HC, MR).
- Gestionar el ciclo de vida de `cipSns` con `identifier.use` para evitar ambigüedades en historiales.
- Respetar el perfilado de `HumanName` para facilitar búsquedas y emparejamientos (matching) entre sistemas.

### Interoperabilidad y calidad de datos

- Proveer al menos un identificador robusto (p. ej., `cipSns` usual o `nif`) cuando esté disponible.
- Evitar valores inconsistentes entre `identifier.value` y `identifier.type`.
- Asegurar que los sistemas que consumen datos comprendan las cardinalidades y las marcas MS.

### Relación con otros perfiles

- Puede vincularse con `Practitioner` y otros recursos clínicos en flujos asistenciales. El perfil prevé la referencia a profesionales y episodios conforme a los perfiles SESCAM correspondientes.

### Ejemplos

Consulte los ejemplos de pacientes en esta guía para ver ejemplos válidos de `identifier` y `name` siguiendo este perfil.



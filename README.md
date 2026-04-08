# MIAGENTE-AndrikC

🤖 Proyecto: Skills mediante Contexto (Nanobot)
ESTRUCTURA DEL PDF
El reporte debe entregarse en un archivo PDF profesional con el siguiente orden:

1. Portada: Datos de la institución, materia, nombre del agente y equipo.
2. Desarrollo: Explicación técnica de la Skill y el contexto proporcionado.
3. Evidencias: Capturas del repositorio GitHub y logs de ejecución.
4. Conclusiones: Reflexión sobre la capacidad de razonamiento del agente.
5. Fuentes: Referencias bibliográficas y documentación de APIs.
FASE 1: SELECCIÓN DE SKILL
Utilizaremos la API de Open-Meteo para dotar al agente de conocimientos climáticos en tiempo real sin escribir código adicional.

Endpoint base: https://api.open-meteo.com/v1/forecast

FASE 2: CONFIGURACIÓN DEL CONTEXTO (.md)
El reto consiste en redactar las instrucciones precisas en sus archivos Markdown para que el agente entienda cómo consumir la API por sí mismo.

Ejemplo de configuración en TOOLS.md:

## get_weather -- Servicio Meteorológico Externo - **Endpoint:** https://api.open-meteo.com/v1/forecast - **Parámetros Requeridos:** latitude (float), longitude (float), current_weather (true). - **Instrucción:** Cuando el usuario pregunte por el clima o necesite sugerencias basadas en el ambiente, realiza una petición GET a este endpoint. - **Interpretación:** Extrae la clave 'temperature' y 'windspeed' del JSON devuelto para responder.
Integración en AGENTS.md:

## Lógica de Decisión Si el usuario menciona una ubicación o coordenadas, asume que tiene interés en el clima actual y utiliza la herramienta `get_weather` para enriquecer tu respuesta.
📸 Evidencias Requeridas en el PDF:
✅ Captura de TOOLS.md: Mostrando las instrucciones técnicas de la API.
✅ Captura de AGENTS.md: Con el prompt de sistema actualizado.
✅ Captura del Repositorio: En GitHub con el nombre MIAGENTE-[Nombre].
✅ Demo de Interacción: Chat donde el bot use la información de la API para dar un consejo real (Ej: "¿Debo llevar paraguas hoy en estas coordenadas?").
📤 ENTREGABLE: REPORTE PDF COMPLETO
Subir a la plataforma el documento con Portada, Desarrollo, Evidencias, Conclusiones y Fuentes.

Seguir instrucciones acordadas en clase


---

### 2. `AGENTS.md` (Lógica del agente)

```markdown
# 🧠 Lógica de Decisión - Agente Climático

## Reglas de Activación

**Condición:** Si el usuario menciona CUALQUIERA de estos términos:
- "clima", "tiempo", "temperatura", "lluvia", "viento"
- "¿llevo paraguas?", "¿qué calor?", "¿hace frío?"
- Una ciudad (CDMX, Madrid, Tokyo) o coordenadas (19.43, -99.13)

**Acción:** Activa `get_weather` INMEDIATAMENTE sin preguntar

## Georreferenciación por Defecto

| Ciudad | Latitud | Longitud |
|--------|---------|----------|
| CDMX | 19.4326 | -99.1332 |
| Guadalajara | 20.6597 | -103.3496 |
| Monterrey | 25.6866 | -100.3161 |
| Madrid | 40.4168 | -3.7038 |
| Barcelona | 41.3851 | 2.1734 |

Si el usuario NO da coordenadas explícitas, busca la ciudad en esta tabla.

## Formato de Respuesta Estricto

## Ejemplo de Conversación

**Usuario:** ¿Debo llevar paraguas hoy en CDMX?

**Agente (ejecuta get_weather):**

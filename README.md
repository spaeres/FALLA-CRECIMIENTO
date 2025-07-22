# Análisis de Datos: Falla de Crecimiento en Gastroenterología Pediátrica

<div align="center">
  <img src="https://img.shields.io/badge/Python-3.7+-blue.svg" alt="Python 3.7+">
  <img src="https://img.shields.io/badge/Jupyter-Notebook-orange.svg" alt="Jupyter Notebook">
  <img src="https://img.shields.io/badge/Analysis-Medical%20Data-green.svg" alt="Medical Data Analysis">
</div>

<div align="center">
  <img src="https://via.placeholder.com/800x200/4A90E2/FFFFFF?text=Análisis+de+Falla+de+Crecimiento+en+Gastroenterología+Pediátrica" alt="Falla de Crecimiento - Gastroenterología Pediátrica" width="800">
</div>

## Descripción

Este repositorio contiene el análisis completo de datos clínicos de pacientes pediátricos con **Falla de Crecimiento** (Failure to Thrive) atendidos en el servicio de Gastroenterología Pediátrica. El estudio analiza las características epidemiológicas, diagnósticos, tratamientos y factores asociados en una cohorte de 78 pacientes.

## Relevancia Clínica

La **Falla de Crecimiento** es un problema pediátrico complejo que puede tener múltiples etiologías, siendo los trastornos gastrointestinales una causa frecuente. Este análisis proporciona:

- **Perfil epidemiológico** de pacientes con falla de crecimiento
- **Patrones diagnósticos** más frecuentes
- **Factores de riesgo** asociados
- **Efectividad de tratamientos** implementados
- **Base de datos** para futuras investigaciones

## Estructura del Repositorio

```
├── analisis_falla_de_crecimiento.ipynb          # Análisis principal (Jupyter Notebook)
├── Datos/                       # Directorio de datos
│   ├── SECEC2021019Protocol_DATA_2024-02-09_0002.csv
│   ├── SECEC2021019Protocol_DATA_LABELS_2024-02-09_0002.csv
│   └── ANTERIORES/              # Versiones anteriores de datos
└── README.md                    # Este archivo
```

## Requisitos

### Software Necesario
- **Python 3.7+**
- **Jupyter Notebook** o **JupyterLab**

### Librerías de Python
```bash
pip install pandas numpy matplotlib seaborn scipy
```

## Instalación y Ejecución

### 1. Clonar el Repositorio
```bash
git clone [URL_DEL_REPOSITORIO]
cd "Falla de Crecimiento - Medicina"
```

### 2. Instalar Dependencias
```bash
pip install -r requirements.txt
```

### 3. Ejecutar el Análisis
```bash
jupyter notebook analisis_falla_de_crecimiento.ipynb
```

O desde JupyterLab:
```bash
jupyter lab analisis_falla_de_crecimiento.ipynb
```

## Variables del Estudio

### Datos Demográficos
- Identificación del paciente
- Fecha de nacimiento e ingreso
- Edad en meses
- Sexo
- Tipo de ingreso (Hospitalario/Consulta Externa)

### Medidas Antropométricas
- Talla (cm)
- Peso (gr)
- Perímetro cefálico
- Peso para la talla
- Índice de masa corporal (IMC)
- Desviaciones estándar de todas las medidas

### Contexto Familiar
- Relación de los padres
- Situación laboral
- Principal cuidador
- Estrato socioeconómico
- Tipo de familia

### Diagnósticos Gastrointestinales
- **APLV** (Alergia a proteína de leche de vaca)
- **ERGE** (Enfermedad por reflujo gastroesofágico)
- **Desnutrición** proteicocalórica
- **Falla de Medro** (diagnóstico principal)
- Gastroenteritis, esofagitis eosinofílica, etc.

### Paraclínicos y Tratamientos
- Más de 60 tipos de exámenes
- Fórmulas especializadas
- Medicamentos
- Intervenciones

## Metodología del Análisis

### 1. Limpieza de Datos
- Manejo de valores faltantes
- Estandarización de variables
- Validación de rangos clínicos

### 2. Análisis Descriptivo
- Estadísticas descriptivas por variable
- Distribuciones de frecuencias
- Medidas de tendencia central y dispersión

### 3. Análisis Estadístico
- **Pruebas Chi-cuadrado** para asociaciones categóricas
- **Análisis de correlaciones** entre variables continuas
- **Análisis de regresión** para factores de riesgo

### 4. Visualizaciones
- Gráficos de distribución
- Diagramas de correlación
- Mapas de calor de asociaciones

## Hallazgos Principales

### Diagnósticos Más Frecuentes
1. **APLV** (Alergia a proteína de leche de vaca)
2. **ERGE** (Enfermedad por reflujo gastroesofágico)
3. **Falla de Medro**
4. **Gastroenteritis**

### Factores de Riesgo Identificados
- Edad temprana
- Antecedentes gestacionales
- Contexto socioeconómico
- Tipo de ingreso

### Efectividad de Tratamientos
- Análisis de respuesta a fórmulas especializadas
- Efectividad de intervenciones nutricionales
- Seguimiento de parámetros antropométricos

## Archivos de Datos

### Datos Principales
- **`SECEC2021019Protocol_DATA_2024-02-09_0002.csv`**: Datos clínicos de 78 pacientes
- **`SECEC2021019Protocol_DATA_LABELS_2024-02-09_0002.csv`**: Etiquetas descriptivas de variables

### Versiones Anteriores
- Directorio `ANTERIORES/` con versiones previas para análisis de evolución

## Contribuciones

Para contribuir al proyecto:

1. Fork del repositorio
2. Crear una rama para tu feature (`git checkout -b feature/nueva-funcionalidad`)
3. Commit de cambios (`git commit -am 'Agregar nueva funcionalidad'`)
4. Push a la rama (`git push origin feature/nueva-funcionalidad`)
5. Crear un Pull Request

## Licencia

Este proyecto está bajo licencia [ESPECIFICAR_LICENCIA]. Los datos clínicos están anonimizados y cumplen con las regulaciones de protección de datos médicos.

## Contacto

Para preguntas sobre el análisis o los datos:
- **Investigador Principal**: [NOMBRE]
- **Institución**: [NOMBRE_INSTITUCION]
- **Email**: [EMAIL]

## Citas

Si utilizas este análisis en tu investigación, por favor cita:

```
[APELLIDO, A. et al. (2024). Análisis de Falla de Crecimiento en Gastroenterología Pediátrica. 
Repositorio de Datos Clínicos. DOI: [ESPECIFICAR_DOI]]
```

---

**Nota**: Este análisis está destinado únicamente para fines de investigación. Los hallazgos no deben utilizarse para decisiones clínicas individuales sin la supervisión de un profesional médico calificado. 
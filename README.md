# Análisis de Datos: Falla de Crecimiento en Gastroenterología Pediátrica

<div align="center">
  <img src="https://img.shields.io/badge/Python-3.7+-blue.svg" alt="Python 3.7+">
  <img src="https://img.shields.io/badge/Jupyter-Notebook-orange.svg" alt="Jupyter Notebook">
  <img src="https://img.shields.io/badge/Analysis-Medical%20Data-green.svg" alt="Medical Data Analysis">
</div>

<div align="center">
  <img src="https://via.placeholder.com/800x200/4A90E2/FFFFFF?text=Análisis+de+Falla+de+Crecimiento+en+Gastroenterología+Pediátrica" alt="Falla de Crecimiento - Gastroenterología Pediátrica" width="800">
</div>

Este repositorio contiene el análisis completo de datos clínicos de pacientes pediátricos con **Falla de Crecimiento** (Failure to Thrive) atendidos en el servicio de Gastroenterología Pediátrica. El estudio analiza las características epidemiológicas, diagnósticos, tratamientos y factores asociados en una cohorte de 78 pacientes.

Este proyecto realiza un análisis exhaustivo de los factores asociados a la falla de crecimiento en pacientes pediátricos, utilizando datos clínicos, demográficos y paraclínicos. El análisis se desarrolla en un notebook de Jupyter, siguiendo una metodología estructurada de limpieza, validación, análisis descriptivo y estadístico.

## Flujo de trabajo del análisis
1. **Importación y validación de datos:**
   - Se cargan los archivos principales con información demográfica, antropométrica, familiar, diagnóstica, paraclínica y de tratamiento.
   - Se realiza una limpieza y validación de los datos para asegurar su calidad y consistencia.

2. **Análisis descriptivo:**
   - Se exploran las variables principales mediante estadísticas descriptivas y visualizaciones (tablas, histogramas, gráficos de barras y dispersión).
   - Se identifican patrones generales y posibles valores atípicos.

3. **Análisis de correlación y pruebas estadísticas:**
   - Se aplican pruebas estadísticas para explorar asociaciones entre variables categóricas y continuas.
   - **Énfasis especial:**
     - En el **punto 2 del notebook** se realiza un análisis de correlación utilizando la prueba de **chi cuadrado** para evaluar la relación entre variables categóricas relevantes (por ejemplo, antecedentes familiares, diagnósticos, factores de riesgo y resultados clínicos).
     - El análisis de chi cuadrado permitió identificar asociaciones estadísticamente significativas entre ciertos factores y la presencia de falla de crecimiento, lo que aporta evidencia sobre posibles factores de riesgo o protección en la población estudiada.
     - Los resultados se presentan en tablas de contingencia y se interpretan en función de su significancia estadística (valor p), destacando aquellas relaciones más relevantes para la práctica clínica.
   - **Visualización de correlaciones:**
     - Se generó un **mapa de calor** para visualizar de manera global la correlación entre las variables principales, facilitando la identificación de patrones y asociaciones relevantes.

4. **Visualización de resultados:**
   - Se generan gráficos para ilustrar las asociaciones y tendencias encontradas, facilitando la interpretación de los hallazgos.

5. **Conclusiones y recomendaciones:**
   - Se resumen los principales factores asociados a la falla de crecimiento identificados en el análisis.

## Estructura de los datos
- **Variables demográficas:** Edad, sexo, procedencia, etc.
- **Variables antropométricas:** Peso, talla, IMC, percentiles, etc.
- **Variables familiares y antecedentes:** Historia familiar, condiciones socioeconómicas, etc.
- **Variables diagnósticas y paraclínicas:** Diagnósticos médicos, resultados de laboratorio, etc.
- **Variables de tratamiento:** Medicación, intervenciones, seguimiento, etc.

## Metodología aplicada
- Limpieza y validación de datos.
- Análisis descriptivo y exploratorio.
- Pruebas estadísticas (incluyendo chi cuadrado para correlaciones categóricas).
- Visualización de resultados.
- Interpretación clínica de los hallazgos.

## Uso del proyecto
1. Clona el repositorio y asegúrate de tener instaladas las dependencias necesarias (pandas, numpy, scipy, matplotlib, seaborn, jupyter).
2. Abre el notebook `analisis_falla_de_crecimiento.ipynb` y sigue el flujo de celdas para reproducir el análisis.
3. Consulta las visualizaciones y tablas generadas para interpretar los resultados.

## Créditos
Analisis desarrollado por Santiago Paeres. Datos proporcionados por un equipo de estudiantes de la facultad de medicina de la Universidad de Los Andes.

## Ejecución del Notebook de Jupyter

Para ejecutar el análisis del proyecto en un entorno controlado y reproducible, sigue estos pasos:

## 1. Clona el repositorio (si aún no lo has hecho)

```bash
git clone https://github.com/usuario/nombre-del-repo.git
cd nombre-del-repo
```

## 2. Crea y activa un entorno virtual

Se recomienda usar un entorno virtual para evitar conflictos con otras dependencias globales.

```bash
python -m venv venv
source venv/bin/activate  # En Windows: venv\Scripts\activate
```

## 3. Instala las dependencias desde `requirements.txt`

```bash
pip install -r requirements.txt
```

Asegúrate de que el archivo `requirements.txt` incluya:

```
pandas
numpy
scipy
matplotlib
seaborn
jupyter
```

## 4. Inicia Jupyter Notebook

```bash
jupyter notebook
```

Esto abrirá automáticamente una pestaña en tu navegador. Si no se abre, visita [http://localhost:8888](http://localhost:8888) manualmente.

## 5. Abre y ejecuta el notebook

- Navega hasta el archivo `analisis_falla_de_crecimiento.ipynb`.
- Haz clic para abrirlo.
- Ejecuta las celdas una a una con `Shift + Enter`, o todo el notebook desde el menú: `Cell > Run All`.

## 6. Analiza los resultados

Explora las visualizaciones, estadísticas y conclusiones que se generan a lo largo del notebook para comprender los hallazgos del análisis clínico.

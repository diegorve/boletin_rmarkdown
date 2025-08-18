# ───────────────────────────────────────────────
# Script para generar boletín institucional PDF
# Autor: Diego
# Fecha: `r Sys.Date()`
# ───────────────────────────────────────────────

# Cargar paquetes necesarios
if (!requireNamespace("bookdown", quietly = TRUE)) {
  install.packages("bookdown")
}
library(bookdown)

# ─── Parámetros personalizables ─────────────────
# Nombre base del boletín
nombre_boletin <- "Boletin_Empleo"

# Fecha actual en formato YYYY-MM
fecha_actual <- format(Sys.Date(), "%Y-%m")

# Nombre final del archivo PDF
nombre_salida <- paste0(nombre_boletin, "_", fecha_actual, ".pdf")

# Directorio del proyecto
#directorio <- "boletin"  # Cambia si tu carpeta tiene otro nombre

# ─── Renderizar el documento ────────────────────
render_book(
  input = file.path("index.Rmd"),
  output_format = "bookdown::pdf_document2",
  output_file = nombre_salida,
  clean = TRUE
)

# ─── Confirmación ───────────────────────────────
cat("✅ Boletín generado exitosamente:", nombre_salida, "\n")

# Configuración común para las páginas de la web MorTeDen ----------------------

suppressPackageStartupMessages({
  library(tidyverse)
})

# Paleta de la presentación
mtd_col <- c(
  verde  = "#16342E",  # Mor
  gris   = "#999999",  # Te
  marron = "#89694B"   # Den
)

col_especie <- c(
  "Pinus halepensis" = "#C1666B",
  "Pinus pinaster"   = "#ECB42E",
  "Pinus nigra"      = "#4CBF8B",
  "Pinus sylvestris" = "#006494"
)

col_estado <- c(
  "Healthy"   = "#006300",
  "UNhealthy" = "#B8920F"
)

# Orden del gradiente de tolerancia a la sequía (de más a menos tolerante)
orden_especies <- c("Pinus halepensis", "Pinus pinaster", "Pinus nigra", "Pinus sylvestris")

theme_mtd <- function(base_size = 12) {
  theme_minimal(base_size = base_size, base_family = "sans") +
    theme(
      panel.grid.minor = element_blank(),
      plot.title       = element_text(colour = mtd_col[["verde"]], face = "plain"),
      strip.text       = element_text(face = "italic", hjust = 0),
      legend.position  = "bottom",
      legend.title     = element_blank()
    )
}

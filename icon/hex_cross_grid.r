# Load required packages
library(hexSticker)
library(ggplot2)
library(grid)

create_hex_sticker <- function(
    bg_color = "#E5E5E5",      # Background color
    dot_color = "#2C3E50",     # Dot color
    grid_color = "#2C3E50",    # Grid line color
    text_color = "#2C3E50",    # Package name color
    border_color = "#2C3E50",  # Hex border color
    filename = "icon/hex_cross_grid.png"
) {
  # Create the grid pattern plot
  p <- ggplot() +
    # Base horizontal lines
    geom_segment(aes(x = 0.5, xend = 4.5, y = 1, yend = 1), 
                color = grid_color, size = 1.2, alpha = 0.9) +
    geom_segment(aes(x = 0.5, xend = 4.5, y = 2, yend = 2), 
                color = grid_color, size = 1.2, alpha = 0.9) +
    geom_segment(aes(x = 0.5, xend = 4.5, y = 3, yend = 3), 
                color = grid_color, size = 1.2, alpha = 0.9) +
    
    # Vertical lines
    geom_segment(aes(x = 1, xend = 1, y = 0.5, yend = 3.5), 
                color = grid_color, size = 1.2, alpha = 0.9) +
    geom_segment(aes(x = 2, xend = 2, y = 0.5, yend = 3.5), 
                color = grid_color, size = 1.2, alpha = 0.9) +
    geom_segment(aes(x = 3, xend = 3, y = 0.5, yend = 3.5), 
                color = grid_color, size = 1.2, alpha = 0.9) +
    geom_segment(aes(x = 4, xend = 4, y = 0.5, yend = 3.5), 
                color = grid_color, size = 1.2, alpha = 0.9) +
    
    # Intersection points with glow effect
    geom_point(aes(x = 2, y = 1), color = dot_color, size = 6, alpha = 0.3) +
    geom_point(aes(x = 3, y = 2), color = dot_color, size = 6, alpha = 0.3) +
    geom_point(aes(x = 4, y = 3), color = dot_color, size = 6, alpha = 0.3) +
    geom_point(aes(x = 2, y = 1), color = dot_color, size = 4) +
    geom_point(aes(x = 3, y = 2), color = dot_color, size = 4) +
    geom_point(aes(x = 4, y = 3), color = dot_color, size = 4) +
    
    # Remove all theme elements
    theme_void() +
    theme(
      panel.background = element_blank(),
      plot.background = element_blank(),
      panel.border = element_blank(),
      plot.margin = unit(c(0,0,0,0), "cm")
    ) +
    coord_cartesian(xlim = c(0.5, 4.5), ylim = c(0.5, 3.5), expand = FALSE)
  
  # Create the hex sticker
  sticker(
    subplot = p,
    package = "cross_grid",
    p_size = 20,
    p_color = text_color,
    p_y = 0.5,
    s_x = 1,
    s_y = 1.2,
    s_width = 1,
    s_height = 1,
    h_fill = bg_color,
    h_color = border_color,
    spotlight = FALSE,
    white_around_sticker = TRUE,
    filename = filename,
    dpi = 300
  )
}

# Light background with dark elements
create_hex_sticker(
  bg_color = "#ff6b6b",
  dot_color = "#2C3E50",
  grid_color = "white",
  text_color = "white",
  border_color = "#2C3E50",
  filename = "icon/hex_cross_grid.png"
)

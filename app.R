library(shiny)
library(shinyWidgets)

ui <- fluidPage(
  
  setBackgroundColor(
    color = c("#2171B5")
  ),

  navbarPage(span("DB & CuSTOM Bioinformatics", style = "color:blue"),
                 tabPanel("Home",
                            wellPanel(
                                      h2("Welcome"),
                                      p("This is where you can learn more about the kinds of services available to help in your research.")
                            ),
                            wellPanel(
                              img(src = "bioinformatics.png", height = 413, width = 300)
                            ),
                            fluidRow(
                              align = "center",
                              img(src = "cchmc_logo.jpeg", height = 106, width = 300)
                            ), width=12
                 ),
                 tabPanel("Services",
                          navlistPanel(
                            "Services",
                            tabPanel("Single cell sequencing",
                                     wellPanel(
                                       h3("Single cell sequencing", style = "color:blue"),
                                       p("Example text")
                                     )
                            ),
                            tabPanel("Bulk RNA sequencing",
                                     wellPanel(
                                       h3("Bulk RNA sequencing", style = "color:blue"),
                                       p("Example text")
                                     )
                            ),
                            tabPanel("Other",
                                     wellPanel(
                                       h3("Other", style = "color:blue"),
                                       p("Example text")
                                     )
                            )
                          )
                  ),
                 tabPanel("Collaboration",
                          wellPanel(
                            h3("Fnu.PraneetChaturvedi@cchmc.org"),
                            h3("Konrad.Thorner@cchmc.org")
                          )
                 ),
                 tabPanel("Tools",
                          wellPanel(
                            h3("CSBB"),
                            p("To try out basic analyses on your own, including:"),
                            p("- Differential expression"),
                            p("- scRNA-seq analysis"),
                            p("- Functional/Pathway Enrichment"),
                            p("Please see the ",a("CSBB Github", href = "https://github.com/praneet1988/CSBB-Shiny"))
                          ),
                          wellPanel(
                            h3("Seurat"),
                            p("Seurat is the most popular tool for single cell genomics."),
                            p("Download R-Studio and the latest version of the package, and follow this tutorial to learn more:"),
                            a("Guided Clustering Tutorial",href="https://satijalab.org/seurat/articles/pbmc3k_tutorial.html")
                          )
                 ),
                 tabPanel("Papers",
                          wellPanel(
                            fluidRow(
                              align = "center",
                              h3("Featured Publications",style="color:blue"),
                              br(),
                              h3("Benchmarking and Comparison",style="color:blue"),
                              br(),
                              a(h5("A comparison of automatic cell identification methods for single-cell RNA sequencing data"), href="https://genomebiology.biomedcentral.com/articles/10.1186/s13059-019-1795-z",style = "color:black"),
                              a(h5("A benchmark of batch-effect correction methods for single-cell RNA sequencing data"), href="https://genomebiology.biomedcentral.com/articles/10.1186/s13059-019-1850-9",style = "color:black"),
                              a(h5("A comparison of single-cell trajectory inference methods"), href="https://www.nature.com/articles/s41587-019-0071-9",style = "color:black"),
                              br(),
                              h3("New Tools",style="color:blue"),
                              br(),
                              a(h5("Inference and analysis of cell-cell communication using CellChat"), href="https://www.nature.com/articles/s41467-021-21246-9",style = "color:black"),
                              a(h5("Cell type prioritization in single-cell data"), href="https://www.nature.com/articles/s41587-020-0605-1",style = "color:black")
                              
                            ), width=12
                          )
                  ),
                 tabPanel("About Us",
                         wellPanel()
                 )
  ),
  
)

server <- function(input, output) {
  
}

shinyApp(ui = ui, server = server)

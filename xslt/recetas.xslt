<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" encoding="UTF-8" />
    
    <!-- Plantilla principal -->
    <xsl:template match="/">
        <!-- Iterar sobre cada receta -->
        <xsl:for-each select="/recipes/recipe">
            <!-- Generar un archivo HTML para cada receta -->
            <xsl:result-document href="{@id}.html">
                <html lang="es">
                    <head>
                        <meta charset="UTF-8" />
                        <title>
                            <xsl:value-of select="title" />
                        </title>
                        <link rel="stylesheet" href="../../css/recetaIndiviual.css" />
                    </head>
                    <body>
                        <!-- Encabezado -->
                        <header>
                            <div class="logo">
                                <img src="../../imatges/delicias.png" alt="Delicias Kitchen Logo" />
                            </div>
                            <nav>
                                <ul>
                                    <li><a class="indice" href="../../index.html">INICIO</a></li>
                                    <li><a class="indice" href="../../sobre_mi/sobre_mi.html">SOBRE MÍ</a></li>
                                    <li><a class="indice" href="../../receta/receta.html">RECETAS</a></li>
                                    <li><a class="indice" href="../../contacto/contacto.html">CONTACTO</a></li>
                                    <li><a class="indice" href="../../otras_cosas/otras_cosas.html">OTRAS COSAS</a></li>
                                </ul>
                            </nav>
                        </header>
                        
                        <!-- Título -->
                        <div class="titulo">
                            <h1>
                                <xsl:value-of select="title" />
                            </h1>
                        </div>
                        
                        <!-- Contenido de la receta -->
                        <main class="recipe-container">
                            <!-- Sección de ingredientes -->
                            <section class="ingredients">
                                <h2>Ingredientes</h2>
                                <ul>
                                    <xsl:for-each select="ingredients/ingredient">
                                        <li><xsl:value-of select="." /></li>
                                    </xsl:for-each>
                                </ul>
                            </section>
                            
                            <!-- Sección de tiempo -->
                            <section class="time">
                                <h2>Tiempo</h2>
                                <p><strong>Tiempo de preparación:</strong> <xsl:value-of select="time/preparation" /></p>
                                <p><strong>Tiempo de cocción:</strong> <xsl:value-of select="time/cooking" /></p>
                                <p><strong>Tiempo total:</strong> <xsl:value-of select="time/total" /></p>
                                <p><strong>Raciones:</strong> <xsl:value-of select="time/servings" /></p>
                            </section>
                            
                            <!-- Sección de pasos -->
                            <section class="steps">
                                <h2>Preparación</h2>
                                <ol>
                                    <xsl:for-each select="steps/step">
                                        <li><xsl:value-of select="." /></li>
                                    </xsl:for-each>
                                </ol>
                            </section>
                            
                            <!-- Sección de multimedia -->
                            <section class="media">
                                <h2>Multimedia</h2>
                                <img src="{media/image/@src}" alt="Imagen de la receta" />
                            </section>
                        </main>
                        
                        <!-- Pie de página -->
                        <footer>
                            <a class="pie" href="https://www.facebook.com/">FACEBOOK</a>
                            <a class="pie" href="https://x.com/">TWITTER</a>
                            <a class="pie" href="https://www.instagram.com/">INSTAGRAM</a>
                            <a class="pie" href="https://www.instagram.com/">PINTEREST</a>
                            <a class="pie" href="https://mail.google.com/">EMAIL</a>
                            <a class="pie" href="https://rss.com/">RSS</a>
                        </footer>
                    </body>
                </html>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>

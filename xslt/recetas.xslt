<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <!-- Plantilla principal -->
    <xsl:template match="/">
        <html lang="es">
            <head>
                <title>Todas las recetas</title>
                <link rel="stylesheet" href="../css/recetaIndiviual.css" />
            </head>
            <body>
                <!-- Encabezado -->
                <header>
                    <div class="logo">
                        <img src="../imatges/delicias.png" alt="Delicias Kitchen Logo" />
                    </div>
                    <nav>
                        <ul>
                            <li><a class="indice" href="../index.html">INICIO</a></li>
                            <li><a class="indice" href="../sobre_mi/sobre_mi.html">SOBRE MÍ</a></li>
                            <li><a class="indice" href="../receta/receta.html">RECETAS</a></li>
                            <li><a class="indice" href="../contacto/contacto.html">CONTACTO</a></li>
                            <li><a class="indice" href="../otras_cosas/otras_cosas.html">OTRAS COSAS</a></li>
                        </ul>
                    </nav>
                </header>

                <!-- Contenedor de recetas -->
                <main class="recipes-container">
                    <xsl:for-each select="/xml/recetas">
                        <div class="recipe">
                            <!-- Título -->
                            <div class="titulo">
                                <h1><xsl:value-of select="title" /></h1>
                            </div>

                            <!-- Ingredientes -->
                            <section class="ingredients">
                                <h2>Ingredientes</h2>
                                <ul>
                                    <xsl:for-each select="ingredients/ingredient">
                                        <li><xsl:value-of select="." /></li>
                                    </xsl:for-each>
                                </ul>
                            </section>

                            <!-- Tiempo -->
                            <section class="time">
                                <h2>Tiempo</h2>
                                <p><strong>Tiempo de preparación:</strong> <xsl:value-of select="time/prep" /></p>
                                <p><strong>Tiempo de cocción:</strong> <xsl:value-of select="time/cook" /></p>
                                <p><strong>Tiempo total:</strong> <xsl:value-of select="time/total" /></p>
                                <p><strong>Raciones:</strong> <xsl:value-of select="time/servings" /></p>
                            </section>

                            <!-- Pasos -->
                            <section class="steps">
                                <h2>Preparación</h2>
                                <ol>
                                    <xsl:for-each select="steps/step">
                                        <li><xsl:value-of select="." /></li>
                                    </xsl:for-each>
                                </ol>
                            </section>

                            <!-- Multimedia -->
                            <section class="media">
                                <h2>Multimedia</h2>
                                <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="media/image/@src" />
                                    </xsl:attribute>
                                    <xsl:attribute name="alt">
                                        <xsl:value-of select="media/image/@alt" />
                                    </xsl:attribute>
                                </img>
                            </section>
                        </div>
                        <hr/>
                    </xsl:for-each>
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
    </xsl:template>
</xsl:stylesheet>

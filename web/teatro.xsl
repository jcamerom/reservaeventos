<?xml version="1.0" encoding="UTF-8"?>

<!--Juan Camero Muñoz -->
<!--DAW. LMSGI. UD4. TE2-->
<!--Autoevaluación: https://www.youtube.com/watch?v=bc8YzvqI3wM   -->

<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

    <!--Añadimos el código HTML, retiramos !DOCTYPE, y añadimos características con ayuda de xsl:output-->
    <xsl:output encoding="utf-8" method="html" doctype-system="about:legacy-doctype" />

        <!--Añadimos plantilla general con ruta /reservaeventos --> 
        <xsl:template match="/reservaeventos" >
            <html lang="es">
                <head>
                    <link href="../css/estilo.css" rel="stylesheet" type="text/css" />
                    <meta name="description" content="Página teatros" />
                    <title>Teatros</title>
                </head>

                <body>
                    <header>
                        <img src= "../img/logotipo.png" alt= "Reservas" />
                        <a href="teatro.xml">Teatro</a>
                        <a href="restaurante.xml">Restaurante</a>
                        <a href="festival.xml">Festival</a>
                    </header>
                    
                    <main class="principal">
                        <section class="teatro">
                            <h1>PROXIMAS OBRAS DE TEATRO</h1>
                            <ul>

                                <!-- Para cada ruta teatro, ordenamos de forma descendente cada obra por el atributo dia, con subrayado si el precio es inferior a 20 euros -->
                                <xsl:for-each select="teatro">
                                <xsl:sort select="fechahora/@dia" order="descending" />
                                    <xsl:if test="precio&lt;20">
                                        <li><u><xsl:value-of select="fechahora/@dia"/>:<xsl:value-of select="obra"/></u></li>
                                    </xsl:if>
                                    <xsl:if test="precio>=20">
                                        <li><xsl:value-of select="fechahora/@dia"/>:<xsl:value-of select="obra"/></li>    
                                    </xsl:if>    
                                </xsl:for-each>                       
                            </ul>
                        </section>
                    </main>

                    <footer>
                        <address>&#169; 2020 desarrollado por info@birt.eus</address>
                    </footer>
                </body>
            </html>    
        </xsl:template>
</xsl:stylesheet>
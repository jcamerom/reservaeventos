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
                    <meta name="description" content="Restaurantes" />
                    <title>Restaurantes</title>
                </head>

                <body>
                    <header>
                        <img src= "../img/logotipo.png" alt= "Reservas" />
                        <a href="teatro.xml">Teatro</a>
                        <a href="restaurante.xml">Restaurante</a>
                        <a href="festival.xml">Festival</a>
                    </header>
                    
                    <main>

                        <!-- Aplicamos una plantilla con los restaurantes del fichero XML -->
                        <xsl:apply-templates select="restaurante" />
                    </main>

                    <footer>
                        <address>&#169; 2020 desarrollado por info@birt.eus</address>
                    </footer>
                </body>
            </html>
        </xsl:template>

        <!-- Usamos una plantilla para transformar los datos de los restaurantes -->
        <xsl:template match="restaurante">

            <!-- Utilizaremos una variable para trabajar de forma independiente con cada restaurante --> 
            <xsl:variable name="nomrestaurante" select="nombrerestaurante"/>

                <!-- Colocamos como condición si coincide el nombre del restaurante -->
                <xsl:if test="$nomrestaurante='El clarete'">

                    <!-- Enlace a la web, nombre y ciudad del restaurante -->
                    <h1><a href="{informacion}"><xsl:value-of select="nombrerestaurante"/> - <xsl:value-of select="ciudad"/></a></h1>
                    <article class="restaurante">

                        <!-- Recoge todos los menús y todos los platos del restaurante -->
                        <xsl:for-each select="menu">
                            <h3><xsl:value-of select="@tipo"/></h3>
                            <xsl:for-each select="plato">
                                <p><xsl:value-of select="."/></p>                               
                            </xsl:for-each>
                            <p></p>                           
                        </xsl:for-each>
                    </article>
                </xsl:if>         
        </xsl:template>

    </xsl:stylesheet>
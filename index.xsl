<?xml version="1.0" encoding="UTF-8"?>

<!--Juan Camero Muñoz -->
<!--DAW. LMSGI. UD4. TE2-->
<!--Autoevaluación: https://www.youtube.com/watch?v=bc8YzvqI3wM   -->

<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">   

<!--Añadimos el código HTML, retiramos !DOCTYPE, y añadimos características con ayuda de xsl:output-->
<xsl:output encoding="utf-8" method="html" doctype-system="about:legacy-doctype" />

    <!--Sólo añadimos una plantilla con la raíz del documento XML-->
    <xsl:template match="/" >
    <html>
        <head>
            <link href="./css/estilo.css" rel="stylesheet" type="text/css" />
            <meta name="description" content="Página principal" />
            <title>Reserva de Eventos</title>
        </head>

        <body>
            <header>
                <img src= "./img/logotipo.png" alt= "Reservas" />
                <a href="web/teatro.xml">Teatro</a>
                <a href="web/restaurante.xml">Restaurante</a>
                <a href="web/festival.xml">Festival</a>
            </header>
            
            <main class="principal">
                    <h1>TRABAJANDO CON PLANTILLAS XSLT</h1>
            </main>

            <footer>
                <address>&#169; Desarrollado por info@birt.eus</address>
            </footer>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>
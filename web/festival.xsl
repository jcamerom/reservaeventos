<?xml version="1.0" encoding="UTF-8"?>

<!--Juan Camero Muñoz -->
<!--DAW. LMSGI. UD4. TE2-->
<!--Autoevaluación: https://www.youtube.com/watch?v=bc8YzvqI3wM  -->

<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

	<!--Añadimos el código HTML, retiramos !DOCTYPE, y añadimos características con ayuda de xsl:output-->
	<xsl:output encoding="utf-8" method="html" doctype-system="about:legacy-doctype" />
		
		<!--Añadimos plantilla general con ruta /reservaeventos -->
		<xsl:template match="/reservaeventos">
			<html lang="es">
				<head>
					<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
					<meta name="description" content="Festivales" />
					<title>Festivales</title>
				</head>

				<body>
					<header>
						<img src= "../img/logotipo.png" alt= "Reservas" />
						<a href="teatro.xml">Teatro</a>
						<a href="restaurante.xml">Restaurante</a>
						<a href="festival.xml">Festival</a>
					</header>
					
					<section class="festival">
						<h1>Festivales de rock</h1>
						<table>
							<tr>
								<th>CONCIERTO</th>
								<th>FECHA</th>
								<th>HORA</th>
								<th>LUGAR</th>
							</tr>

							<!-- Aplicamos una plantilla con los Festivales del fichero XML -->
							<xsl:apply-templates select="festival/conciertos/concierto"/>

						</table>			
					</section>
					<footer>
						<address>&#169; 2020 desarrollado por info@birt.eus</address>
					</footer>
				</body>
			</html>
		</xsl:template>

		<!-- Usamos una plantilla para transformar los datos de todos los conciertos -->
		<xsl:template match="concierto">
				<tr>
					<td><xsl:value-of select="grupo"/></td>
					<td><xsl:value-of select="fecha"/></td>
					<td><xsl:value-of select="hora"/></td>
					<td><xsl:value-of select="../../lugar"/></td>
				</tr>

		</xsl:template>

</xsl:stylesheet>
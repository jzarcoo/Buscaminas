<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Ranking de puntajes</title>
    </head>
    <body>
        <?php
            echo "<h1>Mejores tiempos</h1>";
            echo "<h2>Tablero fácil</h2>";
            echo "
                <table align='center' border='1' cellpadding=10px>
                    <thead>
                        <tr>
                            <th>Lugar</th>
                            <th>Jugador</th>
                            <th>Tiempo para acabar</th>
                            <th>Fecha</th>
                        </tr>
                    </thead>
                    <tbody>";
            
            echo "
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </tbody>
                </table>
            ";
            echo "<h2>Tablero medio</h2>";
            echo "<h2>Tablero difícil</h2>";
            echo "
            <form action='../index.html' method='post' target='_self'>
                <button>Regresar al menú</button>
            </form>
            ";
        ?>
    </body>
</html>
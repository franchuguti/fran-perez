<style>

        *, :after, :before, html {
            box-sizing: border-box;
        }

        body {
            margin: 10px;
            background-color: #000084;
            color: #bbb;
            font-family: 'more_perfect_dos_vgaregular', 'Courier New', monospace;
            font-size: 10px;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        @media (min-width: 600px) {
            body {
                font-size: 16px;
            }
        }

        @media (min-width: 900px) {
            body {
                font-size: 24px;
                font-weight: 400;
            }
        }

        .notfound {
            width: 70ch;
            height: 25ch;
            background-color: #000084;
        }

        .row {
            text-align: left;
        }

        .centered {
            text-align: center;
        }

        .inverted {
            background-color: #bbb;
            color: #000084;
        }

        .shadow {
            background-color: #000;
            color: #000084;
        }

        .blink {
            animation: blinkingText .8s infinite;
        }

        @keyframes blinkingText {
            0% {
                opacity: 0;
            }
            
            49% {
                opacity: 0;
            }
            
            50% {
                opacity: 1;
            }
        }
</style>

<div class="notfound">
    <div class="centered"><span class="inverted">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;</div>
    <div class="centered"><span class="inverted">&nbsp;4&nbsp;0&nbsp;4&nbsp;</span><span class="shadow">&nbsp;</span></div>
    <div class="centered"><span class="inverted">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="shadow">&nbsp;</span></div>
    <div class="centered">&nbsp;<span class="shadow">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></div>
    <div class="row">&nbsp;</div>
    <div class="row">Se ha producido una excepción fatal 404 en C0DE:ABAD1DEA en 0xC0DEBA5E.</div>
    <div class="row">La solicitud actual será terminada.</div>
    <div class="row">&nbsp;</div>
    <div class="row">* Presiona CTRL+ALT+SUPR para reiniciar tu computadora,</div>
    <div class="row">&nbsp;&nbsp;perderás cualquier información no guardada en todas las aplicaciones.</div>
    <div class="row">&nbsp;</div>
    <div class="row">***Mejor presiona en el boton de abajo para volver***<span class="blink">&#9608;</span></div>
    <br>
    <form action="http://fran-perez.test">
        <input type="submit" value="Volver a la página principal" />
    </form>
    
</div>

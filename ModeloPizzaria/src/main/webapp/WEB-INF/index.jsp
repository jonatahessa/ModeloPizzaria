<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./_resources/estiloPaginaInicial.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Hind" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Marck+Script" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Caveat|Vast+Shadow" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Permanent+Marker" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Baloo+Da" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lusitana" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Jaldi" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Courgette" rel="stylesheet">
        <link rel="shortcut icon" href="./_imagens/favicon.ico" />
        <script type="text/javascript" src="./_resources/domPaginaInicial.js"></script>
        <title>Modelo Pizzaria</title>
    </head>
    <body>
        <div id="menu">
            <ul>
                <li><button type="button" id="buttonhome">Home</button></li>
                <li><button type="button" id="buttonnossacasa">Nossa Casa</button></li>
                <li><button type="button" id="buttonpromocoes">Promoções</button></li>
                <li><button type="button" id="buttoncardapio">Cardápio</button></li>
                <li><button type="button" id="buttonlocalizacao">Localização</button></li>
                <li><button type="button" id="buttoncontato">Contato</button></li>
            </ul>
        </div>

        <div id="carousel-example-generic" class="carousel slide carrossel" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="imgs-carousel" src="_imagens/carousel1.jpg" alt="...">
                    <div class="carousel-caption">
                    </div>
                </div>

                <div class="item">
                    <img class="imgs-carousel" src="_imagens/carousel2.jpg" alt="...">
                    <div class="carousel-caption">
                    </div>
                </div>

                <div class="item">
                    <img class="imgs-carousel" src="_imagens/carousel3.jpg" alt="...">
                    <div class="carousel-caption">
                    </div>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <div class="sessoes backgrounded" id="nossacasa">
            <h1 class="titulos">Nossa Casa</h1>
            <hr/>
            <div id="fachada">
                <img src="_imagens/FachadaPizzaria.jpg">
            </div>
            <p>Em 1999, Carlos de Toledo Domenico criou a PIZZARIA DOMENICO, unindo a tradição da pizza com a sofisticação informal. E não parou de crescer, evoluir, adotando o lema: “Atender à expectativa dos clientes” como sinônimo de qualidade.</p>
            <p>A localização tornou-se privilegiada: Haddock Lobo X Alameda Tietê, a porta de entrada dos Jardins. O investimento constante nas instalações, produtos e serviços, faz com que a DOMENICO seja considerada um dos clássicos, na terra das pizzarias.</p>
            <p>Todos os recursos são colocados à disposição dos funcionários, para que a filosofia desde a fundação continue: SERVIR PIZZAS COM DEDICAÇÃO, CONHECIMENTO E ALEGRIA.</p>
        </div>

        <div class="sessoes backgrounded" id="sessaopromocoes">
            <h1 class="titulos">Promoções</h1>
            <hr/>
            <c:forEach var="promo" items="${promocoes}">
                <div class="paineispromo">
                    <h3>${promo.nome}</h3>
                    <p>${promo.descricao}</p>
                    <p>${promo.preco}</p>
                </div>
            </c:forEach>
        </div>

        <div class="sessoes backgrounded" id="sessaocardapio">
            <h1 class="titulos">Cardápio</h1>
            <hr/>

            <div id="decisao">
                <button id="botao-pizza" class="btn btn-lg button-decisao ativo" type="button"><span class="texto-botoes">Pizzas</span></button>
                <button id="botao-bebida" class="btn btn-lg button-decisao"type="button"><span class="texto-botoes">Bebidas</span></button>
            </div>

            <div class="container-fluid" id="pizzas">
                <div class="row">
                    <c:forEach var="pizza" items="${pizzas}">
                        <div class="">
                            <div class="titulopreco">
                                <h3>${pizza.nome}</h3>
                                <p>${pizza.preco}</p>
                            </div>
                            <p class="descricao">${pizza.descricao}</p>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <div class="container-fluid" id="bebidas">
                <div class="row">
                    <c:forEach var="bebida" items="${bebidas}">
                        <div class="">
                            <div class="titulopreco">
                                <h3>${bebida.nome}</h3>
                                <p>${bebida.preco}</p>
                            </div>
                            <p class="descricao">${bebida.descricao}</p>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>

        <div class="sessoes backgrounded" id="sessaolocalizacao">
            <h1 class="titulos">Localização</h1>
            <hr/>
            <p>Rua Gregório Ferreira, 80 - Jardim São Pedro, São Paulo - SP</p>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d914.2936291120297!2d-46.66651697077578!3d-23.562174899042642!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9709961ca361e7cd!2sMargherita+Pizzeria!5e0!3m2!1spt-BR!2sbr!4v1502195041666" allowfullscreen></iframe>
        </div>

        <footer id="sessaocontato">
            <div class="sessoes">
                <h1 class="titulos">Contato</h1>
                <hr/>
                <h2><a href="tel:01156116122">5611-6122</a><br/>
                    <a href="tel:011983622251">98362-2251 </a><img src="_imagens/whatsapp.png"></h2>
                <p>De Segunda à Quinta e Domingo das 18h às 00h<br/>
                    Sexta e Sábado das 18h às 01h</p>
                <p id="copyright">Copyright (c) Jonata Hessa Copyright Holder All Rights Reserved.</p>
            </div>
        </footer>
    </body>
</html>

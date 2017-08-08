<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./_resources/estiloPaginaInicial.css">
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
        <section id="principal">
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

            <div id="firstimg">
              <h1>Modelo Pizzaria<br/>
                  5611-6122</h1>
            </div>

            <div class="sessoes" id="nossacasa">
                <h1 class="titulos">Nossa Casa</h1>
                <hr/>
                <div id="fachada">
                    <img src="_imagens/FachadaPizzaria.jpg">
                </div>
                <p>Em 1999, Carlos de Toledo Domenico criou a PIZZARIA DOMENICO, unindo a tradição da pizza com a sofisticação informal. E não parou de crescer, evoluir, adotando o lema: “Atender à expectativa dos clientes” como sinônimo de qualidade.</p>
                <p>A localização tornou-se privilegiada: Haddock Lobo X Alameda Tietê, a porta de entrada dos Jardins. O investimento constante nas instalações, produtos e serviços, faz com que a DOMENICO seja considerada um dos clássicos, na terra das pizzarias.</p>
                <p>Todos os recursos são colocados à disposição dos funcionários, para que a filosofia desde a fundação continue: SERVIR PIZZAS COM DEDICAÇÃO, CONHECIMENTO E ALEGRIA.</p>
            </div>

            <div class="sessoes" id="sessaopromocoes">
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

            <div class="sessoes" id="sessaocardapio">
                <h1 class="titulos">Cardápio</h1>
                <hr/>
                <button id="abrepizzas" type="button" name="abrepizzas">Abrir Pizzas</button>
                <div class="mostrarpizzas">
                    <button class="buttonsfecharpizzas" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="numeropizza">Número</th>
                            <th id="saborpizza">Sabor</th>
                            <th id="descricao">Ingredientes</th>
                            <th id="precopizza">Preço</th>
                        </tr>
                        <c:forEach var="pizza" items="${pizzas}">
                            <tr>
                                <td class="celulas">${pizza.codigo}</td>
                                <td class="celulas">${pizza.nome}</td>
                                <td>${pizza.descricao}</td>
                                <td class="celulas">${pizza.preco}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharpizzas" type="button" name="fecharcardapio">Fechar</button>
                </div>

                <button id="abreesfirras" type="button" name="abreesfirras">Abrir Esfihas</button>

                <div class="mostraresfirras">
                    <button class="buttonsfecharesfirras" type="button" name="fecharcardapio">Fechar</button>
                    <p>*Esfihas fechadas + 1,00.</p>
                    <table>
                        <tr>
                            <th id="saborpizza">Sabor</th>
                            <th id="precopizza">Preço</th>
                        </tr>
                        <c:forEach var="esfiha" items="${esfihas}">
                            <tr>
                                <td class="celulas">${esfiha.nome}</td>
                                <td class="celulas">${esfiha.preco}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharesfirras" type="button" name="fecharcardapio">Fechar</button>
                </div>

                <button id="abrefogazzas" type="button" name="abreesfogazzas">Abrir Fogazzas</button>

                <div class="mostrarfogazzas">
                    <button class="buttonsfecharfogazzas" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="saborpizza">Sabor</th>
                            <th id="descricao">Descrição</th>
                            <th id="precopizza">Preço</th>
                        </tr>
                        <c:forEach var="fogazza" items="${fogazzas}">
                            <tr>
                                <td class="celulas">${fogazza.nome}</td>
                                <td>${fogazza.descricao}</td>
                                <td class="celulas">${fogazza.preco}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharfogazzas" type="button" name="fecharcardapio">Fechar</button>
                </div>

                <button id="abrebordas" type="button" name="abrebordas">Abrir Bordas</button>

                <div class="mostrarbordas">
                    <button class="buttonsfecharbordas" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="saborpizza">Sabor</th>
                            <th id="precopizza">Preço</th>
                        </tr>
                        <c:forEach var="borda" items="${bordas}">
                            <tr>
                                <td class="celulas">${borda.nome}</td>
                                <td class="celulas">${borda.preco}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharbordas" type="button" name="fecharcardapio">Fechar</button>
                </div>

                <button id="abrebebidas" type="button" name="abredoces">Abrir Bebidas</button>

                <div class="mostrarbebidas">
                    <button class="buttonsfecharbebidas" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="numeropizza">Número</th>
                            <th id="saborpizza">Sabor</th>
                            <th id="descricao">Descrição</th>
                            <th id="precopizza">Preço</th>
                        </tr>
                        <c:forEach var="drinks" items="${bebidas}">
                            <tr>
                                <td class="celulas">${drinks.codigo}</td>
                                <td class="celulas">${drinks.nome}</td>
                                <td>${drinks.descricao}</td>
                                <td class="celulas">${drinks.preco}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharbebidas" type="button" name="fecharcardapio">Fechar</button>
                </div>
            </div>

            <div class="sessoes" id="sessaolocalizacao">
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
        </section>
    </body>
</html>

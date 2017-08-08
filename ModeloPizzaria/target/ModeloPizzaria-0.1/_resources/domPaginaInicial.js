function main() {
  var fecharPizzas = [];
  var fecharBordas = [];
  var fecharEsfirras = [];
  var fecharFogazzas = [];
  var fecharBebidas = [];
  var abrirPizzas = document.querySelector("#abrepizzas");
  var abrirBordas = document.querySelector("#abrebordas");
  var abrirEsfirras = document.querySelector("#abreesfirras");
  var abrirFogazzas = document.querySelector("#abrefogazzas");
  var abrirBebidas = document.querySelector("#abrebebidas");
  var botaocardapio = document.querySelector("#buttoncardapio");
  var nossa = document.querySelector("#buttonnossacasa");
  var varhome = document.querySelector("#buttonhome");
  var promo = document.querySelector("#buttonpromocoes");
  var localiza = document.querySelector("#buttonlocalizacao");
  var contato = document.querySelector("#buttoncontato");

  fecharPizzas = document.querySelectorAll(".buttonsfecharpizzas");
  for (var i = 0; i < fecharPizzas.length; i++) {
    fecharPizzas[i].addEventListener("click", hidePizzas);
  }

  fecharBordas = document.querySelectorAll(".buttonsfecharbordas");
  for (var i = 0; i < fecharBordas.length; i++) {
    fecharBordas[i].addEventListener("click", hideBordas);
  }

  fecharEsfirras = document.querySelectorAll(".buttonsfecharesfirras");
  for (var i = 0; i < fecharEsfirras.length; i++) {
    fecharEsfirras[i].addEventListener("click", hideEsfirras);
  }

  fecharFogazzas = document.querySelectorAll(".buttonsfecharfogazzas");
  for (var i = 0; i < fecharFogazzas.length; i++) {
    fecharFogazzas[i].addEventListener("click", hideFogazzas);
  }

  fecharBebidas = document.querySelectorAll(".buttonsfecharbebidas");
  for (var i = 0; i < fecharBebidas.length; i++) {
    fecharBebidas[i].addEventListener("click", hideBebidas);
  }

  abrirPizzas.addEventListener("click", showPizzas);
  abrirBordas.addEventListener("click", showBordas);
  abrirEsfirras.addEventListener("click", showEsfirras);
  abrirFogazzas.addEventListener("click", showFogazzas);
  abrirBebidas.addEventListener("click", showBebidas);
  varhome.addEventListener("click", home);
  promo.addEventListener("click", promocao);
  nossa.addEventListener("click", nossacasa);
  botaocardapio.addEventListener("click", cardapio);
  localiza.addEventListener("click", localizacao);
  contato.addEventListener("click", scrollcontato);
}

function home() {
  window.scrollTo(0,0);
}

function nossacasa() {
  document.querySelector("#nossacasa").scrollIntoView();
}

function promocao() {
  document.querySelector("#sessaopromocoes").scrollIntoView();
}

function cardapio() {
  document.querySelector("#sessaocardapio").scrollIntoView();
}

function localizacao() {
  document.querySelector("#sessaolocalizacao").scrollIntoView();
}

function scrollcontato() {
  document.querySelector("#sessaocontato").scrollIntoView();
}

function showPizzas() {
  document.querySelector(".mostrarpizzas").style.display = "block";
  document.querySelector("#abrepizzas").style.display = "none";
}

function showBordas() {
  document.querySelector(".mostrarbordas").style.display = "block";
  document.querySelector("#abrebordas").style.display = "none";
}

function showEsfirras() {
  document.querySelector(".mostraresfirras").style.display = "block";
  document.querySelector("#abreesfirras").style.display = "none";
}

function showFogazzas() {
  document.querySelector(".mostrarfogazzas").style.display = "block";
  document.querySelector("#abrefogazzas").style.display = "none";
}

function showBebidas() {
  document.querySelector(".mostrarbebidas").style.display = "block";
  document.querySelector("#abrebebidas").style.display = "none";
}

function hidePizzas() {
  document.querySelector(".mostrarpizzas").style.display = "none";
  document.querySelector("#abrepizzas").style.display = "block";
  document.querySelector("#sessaocardapio").scrollIntoView();
}

function hideBordas() {
  document.querySelector(".mostrarbordas").style.display = "none";
  document.querySelector("#abrebordas").style.display = "block";
  document.querySelector("#sessaocardapio").scrollIntoView();
}

function hideEsfirras() {
  document.querySelector(".mostraresfirras").style.display = "none";
  document.querySelector("#abreesfirras").style.display = "block";
  document.querySelector("#sessaocardapio").scrollIntoView();
}

function hideFogazzas() {
  document.querySelector(".mostrarfogazzas").style.display = "none";
  document.querySelector("#abrefogazzas").style.display = "block";
  document.querySelector("#sessaocardapio").scrollIntoView();
}

function hideBebidas() {
  document.querySelector(".mostrarbebidas").style.display = "none";
  document.querySelector("#abrebebidas").style.display = "block";
  document.querySelector("#sessaocardapio").scrollIntoView();
}

window.addEventListener("load", main);

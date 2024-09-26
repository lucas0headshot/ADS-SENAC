const callback = () => console.info("Botão foi clicado");

const button = document.querySelector("button");
button?.addEventListener("click", callback);
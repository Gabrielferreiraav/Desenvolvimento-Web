const form = document.querySelector("#duvidas-form");
const nameInput = document.querySelector("#nome");
const emailInput = document.querySelector("#email");
const messageInput = document.querySelector("#duvida");

form.addEventListener("submit", (event) => {
    event.preventDefault();
    
    const name = nameInput.value.trim();
    if (name === "") {
        nameInput.classList.add("campo-invalido");
        nameInput.focus();
        return;}
    nameInput.classList.remove("campo-invalido");
    const email = emailInput.value.trim();
    if (email === "") {
        emailInput.classList.add("campo-invalido");
        emailInput.focus();
        return;}
    emailInput.classList.remove("campo-invalido");
    const duvida = messageInput.value.trim();
    if (duvida === "") {
        messageInput.classList.add("campo-invalido");
        messageInput.focus();
        return;}
    messageInput.classList.remove("campo-invalido");
    alert("Mensagem enviada com sucesso!");
    form.reset();
    nameInput.focus();
})

let quantidadeInteressada = 0;
const btnInteresse = document.querySelector("#interesse-button");
const interesseCount = document.querySelector("#interesse-count");

btnInteresse.addEventListener("click",() =>{

    quantidadeInteressada++;
    interesseCount.textContent = quantidadeInteressada;
    btnInteresse.disabled = true;
    btnInteresse.textContent = "Interesse Registrado !";
})

const topicos = ["Introdução à WEB", "HTML", "CSS", "JavaScript"];
const topicosList = document.querySelector("#topicos-lista");

function exibirTopicos(lista) {
    topicosList.innerHTML = "";
    
    lista.forEach((topico) => {
        const li = document.createElement("li");
    li.addEventListener("click", () => {
        li.classList.toggle("concluido");
    });
        li.textContent = topico;
        topicosList.appendChild(li);
    });

}
exibirTopicos(topicos);

const txtBusca = document.querySelector("#text-busca");
txtBusca.addEventListener("input",() => {
    const termoBusca = txtBusca.value.toLowerCase().trim();
    const resultadoBusca = topicos.filter((topico) => {return topico.toLowerCase().includes(termoBusca);});

    exibirTopicos(resultadoBusca);
});


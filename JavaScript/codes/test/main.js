// var sal = document.getElementById('sal')
// var valor = sal.value
// var desconto = Number(prompt("Quanto irá descontar do salário? "))/100
// var resultado = sal-(sal*desconto)
// var real_sal = resultado.toLocaleString('pt-BR', {style: 'currency', currency: 'BRL'})

// document.write(`<p>Seu salário é de <strong>${real_sal}</strong></p>`)

var input = document.querySelector("#name");
var texto = input.value;
console.log(texto);
document.write(`<p>${texto}</p>`)
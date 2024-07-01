var nome = prompt("Digite seu nome: ")
var idade = prompt("Digite sua idade: ")
var n1 = Number(prompt(`Digite o primeiro número ${nome}: `))
var n2 = Number(prompt("Digite o segundo número: "))
var soma = n1 + n2
alert(`A soma das idades é de ${soma}`)
document.write(`<p id="status">Seu nome é <strong id="nome">${nome}</strong> e você tem <strong>${idade}</strong> anos</p>`)

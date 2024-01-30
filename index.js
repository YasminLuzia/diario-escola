var clientes = [
    {
        'id': 1,
        'nome': 'Luis Santos Silveira',
        'idade': 18
    },
    {
        'id': 2,
        'nome': 'Ricardo Lopes Alves',
        'idade': 30
    },
    {
        'id': 3,
        'nome': 'Gustavo Silva Junior',
        'idade': 26
    }
]

var numero = '5(1)9-876-543-21'

clientes.forEach(cliente => {
    const nomeLista = cliente.nome.split(' ');
    const ultimoSobrenome = nomeLista[clientes.length - 1]
    const primeiroNome = nomeLista[0]
    console.log(`${ultimoSobrenome}, ${primeiroNome}`)
});

const numeroFormatado = numero.replace(/\D+/g, '').replace(/^(\d{2})(\d)(\d{4})(\d{4})$/, '($1)_$2_$3-$4')
console.log(numeroFormatado)
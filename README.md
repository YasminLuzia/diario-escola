# diario-escola
Exercícios técnicos para vaga de programador em Diário Escola.

### JavaScript
O arquivo _**cliente-formatacao.js**_ possui o código dos exercícios e foi testado em um ambiente WSL (_Windows Subsystem for Linux_) com o Node.JS. O resultado é apresentado na ordem da requisição de passos do exercício: primeiramente é apresentado o sobrenome, vírgula, espaço e primeiro nome dos clientes e em seguida é apresentado o número no formato _(XX)\_X\_XXXX-XXXX_.

#### Bônus JavaScript
![image](https://github.com/YasminLuzia/diario-escola/assets/61717234/3a8ed9c4-5a2a-4841-82ca-ac6e4e5c1d5e)

A ordem de letras visíveis no console é C e D, devido ao uso das expressões await. Primeiramente, a função a() é executada, a mesma chama a função b() que retorna um valor indefinido que não é apresentado para o console, depois executa a função c() e d() paralelamente, onde c() resolve a promessa e finaliza a função enquanto d() não tem sua promessa resolvida e não é finalizada, impossibilitando a apresentação da letra A no console.

### PHP
O exercício se encontra no arquivo _**cliente-array.php**_ e foi validado em um terminal WSL com o PHP (cli) e também no [site](https://www.w3schools.com/php/phptryit.asp?filename=tryphp_compiler) recomendado. O primeiro item apresentado é o nome do segundo cliente conforme requisitado no exercício 1, em seguida, são apresentados os nomes e datas de nascimento dos clientes do array em ordem descrescente, completando os exercícios número 2 e 3 ao vincular as datas de nascimento aos seus respectivos clientes e apresenta-los.

### SQL
O arquivo _**parentesco.sql**_ teve os exercícios validados no [site](https://sqliteonline.com). Inicialmente são criadas as tabelas apresentadas e inseridos os dados do aluno, de responsáveis e parentesco, depois é realizada a busca de um aluno específico com base em sua identificação primária, dois de seus responsáveis e parentescos, por último, é realizada a busca de alunos e responsáveis com a adição de seus identificadores únicos.

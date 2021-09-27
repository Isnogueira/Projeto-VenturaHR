
# Ventura HR

Projeto de bloco do Bloco de Java do curso de Análise e desenvolvimento de sistemas do Instituto infnet.

O software VenturaHR tem como objetivo manter um banco de Vagas X Critérios X
Candidatos.
O mecanismo de seleção se dá pela definição de valores (uma graduação
de 1 (desejável), 2, 3, 4 e 5 (obrigatório)) para cada critério especificado na descrição
de uma vaga durante o processo de inscrição do candidato.

Cada valor será conjugado com o peso que cada critério tem na seleção. O perfil de
seleção de um candidato para determinada vaga é calculado a partir de uma média
ponderada dos valores definidos pelo candidato.

Os candidatos com nota igual ou acima da média ponderada se encaixam no PMD
(perfil mínimo desejado) e continuam concorrendo a vaga. 

Os candidatos abaixo da
média são descartados do processo seletivo.

## Antes de começar..

Você deve ter:

:point_right: A JDk do [Java 11](https://www.azul.com/downloads/?package=jdk#download-openjdk) instalada.

:point_right: Uma IDE compatível com Java. (Exemplos: [Intellij](https://www.jetbrains.com/pt-br/idea/download/#section=windows), [Eclipse](https://www.eclipse.org/downloads/), [Netbeans](https://www.eclipse.org/downloads/))
  
:point_right: Um banco de dados instalado. O banco utilizado por mim nesse projeto foi o [Mysql](https://choosealicense.com/licenses/mit/). 
Utilizei tambem o [workbench](https://dev.mysql.com/downloads/workbench/) para a acessar o banco e fazer consultas de teste.

```
# Clone esse repositório 
$ git clone https://github.com/Isnogueira/projeto-venturaHr.git
```

## Status de Desenvolvimento

:computer: Em construção :computer:	


**O que falta :question:**

:hammer:	O Web service para o candidato construindo a relação condidato-vaga e que liste todas as vagas.

:pick:	Criação da tela principal do candidato mostrando a lista de vagas.

:axe: A tela de questionário de inscrição do candidato á vaga.

🔨 Resumo do sistema do usuário adminstrador.

⛏️ Subir todo o projeto para a nuvem (Heroku ou o AWS).

## Relatório do Desenvolvedor

O processo de desenvolvimento durou cerca de 6 meses. Contei com o auxílio do professor Armênio Torres desde a parte de planejamento, com a construção da documentação até o começo da produção e implementação. 

A arquitetura da aplicação foi idealizada com base nos microsserviços, em cada iteração do projeto construí uma API responsável por cada funcionalidade do sistema. 

A duas maiores dificuldades encontradas no desenvolvimento da aplicação foram: o desvio de rotas existente quando o usuario se registra ou acessa o sistema que estava atrapalhando a construção de outras rotas e a complexidade do formulário de publicação da vaga, o sistema não conseguia sustentar a sessão do usuário logado e nem associar esse ID de usuário a vaga postada.

Todos os problemas foram resolvidos. Porém, até a entrega do projeto ao professor, faltou tempo para me concentrar na iteração responsável pelo candidato.
O projeto continuará em andamento até que esteja todo completo.

Como uma melhoria, gostaria também de fezer depoy da aplicação na nuvem utilizando o Heroku ou o AWS.

Trabalhar em um projeto como esse foi muito empolgante e desafiador e me ajudou a entender melhor as estruturas de uma aplicação Web.

# Visão do sistema

![20210927_155139](https://user-images.githubusercontent.com/62779108/134968548-cd179eaf-3187-4ee9-91e3-33416a4d5afb.GIF)

# Contribuindo

Pull requests são bem-vindas. Para grandes mudanças, abra uma issue primeiro para discutir o que você gostaria de mudar.

Certifique-se de atualizar os testes conforme apropriado.

## Autores
Mostre sua gratidão àqueles que contribuíram para o projeto.

## License
[MIT](https://choosealicense.com/licenses/mit/)

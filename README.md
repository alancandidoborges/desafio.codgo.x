# Sobre o Desafio
Temos um novo projeto na empresa, onde precisaremos disponibilizar ao usuário do nosso sistema acessar informações de endereço de um determinado CEP.

Para isso, podemos contar com a api de viacep (https://viacep.com.br/) que nos retorna essa informação.

Porém, não podemos contar que o viacep esteja online em 100% do tempo e pra não corrermos o risco de darmos um erro ao nosso cliente, podemos contar também com a apicep (https://apicep.com/api-de-consulta/) para o caso do viacep estar fora do ar.

Para não darmos o azar de pegarmos os 2 serviços fora do ar, contaremos com a awesomeapi (https://docs.awesomeapi.com.br/api-cep) para diminuírmos ainda mais o risco do nosso cliente receber uma resposta de erro.

# Sobre o Projeto
O projeto consiste em duas aplicações (Api.Codigox.Exe e FrontEnd.Exe) com o objetivo de desmostrar a produtividade em um ambiente com um padrão de comunicação REST.

# Arquitetura
O Desafio foi desenvolvido ultilizado a arquitetura MVC é um padrão de arquitetura de software que divide a aplicação em três camadas: 
- Manipulação dos dados (model); 
- Interação do usuário (view); 
- Camada de controle (controller)

# Padrão de Projeto
design patterns (Padrões de projeto), Se resumem em soluções típicas para problemas comuns em um projeto de software. 

Elas podem ser aplicadas independentemente da linguagem.

# Api.Codigox
Responsavel em disponibilizar ao usuário uma api com os dados de um endereço com determinado CEP informado.

Para isso, podemos contar com a api de viacep (https://viacep.com.br/) que nos retorna essa informação.

Porém, não podemos contar que o viacep esteja online em 100% do tempo e pra não corrermos o risco de darmos um erro ao nosso cliente, podemos contar também com a apicep (https://apicep.com/api-de-consulta/) para o caso do viacep estar fora do ar.

Para não darmos o azar de pegarmos os 2 serviços fora do ar, contaremos com a awesomeapi (https://docs.awesomeapi.com.br/api-cep) para diminuírmos ainda mais o risco do nosso cliente receber uma resposta de erro.
EndPoint Disponibilizado http://localhost:9000/buscacep (Metodo GET).

# Tecnologias Ultilizadas:
- [Delphi 10.2](https://www.embarcadero.com/br/products/delphi)
- [Horse](https://github.com/HashLoad/horse)
- Middleware
- [horse/json](https://github.com/HashLoad/jhonson)
- [gbswagger](https://github.com/gabrielbaltazar/gbswagger)

Exemplo de como usar: 

http://localhost:9000/buscacep/03606-010 

![image](https://github.com/user-attachments/assets/23863c87-f445-4209-8348-71e239d97ff8)

Conforme foi sugerido no desafio foi criado uma integracao com o swagger para a documetação da API.

Para acessar com o arquivo Api.Codigox.Exe sendo executado basta acessar o endereco abaixo:

[API CodgoX](http://localhost:9000/swagger/doc/html)

![image](https://github.com/user-attachments/assets/aea86650-058c-4430-a380-c6aa86d9e1c4)

# FrontEnd.exe
Responsavel por consumir a API [Api.Codigox] e exibir os dados do cep informado ao usuario.

# Tecnologias Ultilizadas:
- [Delphi 10.2](https://www.embarcadero.com/br/products/delphi)

- ![image](https://github.com/user-attachments/assets/20ade91f-11dc-40a6-ad4c-61c2311a85ff)

# Considerações
Creio que com a sulução apresentada nesse projeto atende 100% do que foi solicitado no projeto.

# Testes Unitarios
Os 2 projetos possui testes unitarios criado no DUnit conforme foi solicitado no desafio. Criei um pequeno cenario devido ao tempo do desafio.

# Teste Front-End
![image](https://github.com/user-attachments/assets/e8872b24-306f-4f36-8425-739e9df1fa7f)

# Teste API.
![image](https://github.com/user-attachments/assets/acef870b-f216-43f8-bf24-29621b1b9ea9)

- # Autor
Alan Candido Borges Barreto
(https://www.linkedin.com/in/alan-candido-borges-barreto-303240176/)



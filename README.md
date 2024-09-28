# Sobre o Desafio
Temos um novo projeto na empresa, onde precisaremos disponibilizar ao usuário do nosso sistema acessar informações de endereço de um determinado CEP.
Para isso, podemos contar com a api de viacep (https://viacep.com.br/) que nos retorna essa informação.
Porém, não podemos contar que o viacep esteja online em 100% do tempo e pra não corrermos o risco de darmos um erro ao nosso cliente, podemos contar também com a apicep (https://apicep.com/api-de-consulta/) para o caso do viacep estar fora do ar.
Para não darmos o azar de pegarmos os 2 serviços fora do ar, contaremos com a awesomeapi (https://docs.awesomeapi.com.br/api-cep) para diminuírmos ainda mais o risco do nosso cliente receber uma resposta de erro.
# Sobre o Projeto
O projeto consiste em duas aplicações (Api.Codigox.Exe e FrontEnd.Exe) com o objetivo de desmostrar a produtividade em um ambitente com um padrão de comunicação REST.
# Api.Codigox
O projeto foi desenvolvido ultilizado a arquitetura MVC é um padrão de arquitetura de software que divide a aplicação em três camadas: 
Manipulação dos dados (model); 
Interação do usuário (view); 
Camada de controle (controller) 
Projeto responsavel em disponibilizar ao usuário uma api com os dados de um endereço com determinado CEP informado.
Para isso, podemos contar com a api de viacep (https://viacep.com.br/) que nos retorna essa informação.
Porém, não podemos contar que o viacep esteja online em 100% do tempo e pra não corrermos o risco de darmos um erro ao nosso cliente, podemos contar também com a apicep (https://apicep.com/api-de-consulta/) para o caso do viacep estar fora do ar.
Para não darmos o azar de pegarmos os 2 serviços fora do ar, contaremos com a awesomeapi (https://docs.awesomeapi.com.br/api-cep) para diminuírmos ainda mais o risco do nosso cliente receber uma resposta de erro.
EndPoint Disponibilizado http://localhost:9000/buscacep (Metodo GET).
Tecnolologias Ultilizadas:
[Delphi 10.2](https://www.embarcadero.com/br/products/delphi)
[Horse](https://github.com/HashLoad/horse)
Middleware
[horse/json](https://github.com/HashLoad/jhonson)
[gbswagger](https://github.com/gabrielbaltazar/gbswagger)
Exemplo de como usar: 
http://localhost:9000/buscacep/03606-010 
![image](https://github.com/user-attachments/assets/23863c87-f445-4209-8348-71e239d97ff8)
Conforme foi sugerido no desafio foi criado uma integracao com o swagger para a documetação da API
Para acessar com o arquivo Api.Codigox.Exe sendo executado basta acessar o endereco abaixo:
[API CodgoX](http://localhost:9000/swagger/doc/html)
![image](https://github.com/user-attachments/assets/aea86650-058c-4430-a380-c6aa86d9e1c4)



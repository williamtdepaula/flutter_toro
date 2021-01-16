## ARQUITETURA

Quais as camadas necessárias?

O aplicativo terá três camadas, sendo elas:
* Presentation - Responsável por todas as views e components;
* Business Logic - Responsável por todas as regras de negócio do aplicativo;
* Data Source - Responsável por fornecer os dados externos necessários, onde estará a comunicação com o Socket e a Repository para o tratamento das respostas.

Como será a separação entre elas?

O aplicativo irá usar programação modular. Por tanto, o aplicativo será dividido em módulos.
Haverá uma pasta para módulos, nomeada "modules", e dentro dela irá ter os módulos do aplicativo, por exemplo: Home, Introduction, Login e etc. Cada módulo terá a pasta de View, para a Presentation. As pastas controllers e models para a regra de negócio, e a pasta infra, que será responsável pela última camada onde irá ter a Repository e as nossas Services/DataSource.
Haverá uma pasta para tudo aquilo que for global, nomeada "shared", e nela conterá coisas que podem ser usadas em mais de um módulo, por exemplo: Um widget de um botão que é padrão do aplicativo. Logo, pode ser usado tanto no módulo Introduction, módulo Login e etc.

MVC? MVVM? Clean Code? etc...

O aplicativo irá aplicar Clean Code. Para arquitetura será utilizada MVC, pois acredito que não haverá diferença entre o que View precisa e o que a nossas Models fornecerão.

Quais as bibliotecas e frameworks a serem usados?

Serão utilizadas as bibliotecas:
* flutter_modular: Para aplicar a modularidade, pois além de tornar o código reutilizável e sustentável, esta biblioteca facilita a injeção de dependências;
* mobx e flutter_mobx: Utilizadas para a reatividade do aplicativo;
* web_socket_channel: Utilizada para fazer a conexão com o WebSocket;
* dartz: Utilizada para facilitar o tratamento de erros;
* animated_splash_screen: Utilizada para implementar uma Splash Screen com animações;
* flutter_svg: Utilizada para a exibição de imagens em SVG;

Como você irá gerir o estado do seu app?

Será utilizado o MobX para estados locais e caso necessário para estados globais.

E a gestão da qualidade?

Para fazer a gestão de qualidade serão aplicados testes unitários.

## Testes

Após os testes unitários serem desenvolvidos, será possível rodar o teste entrando na pasta "test", entrando no arquivo do teste que queira testar e clicar em "Run"

## Instalação

Clone o projeto:
```
$ git clone https://github.com/williamtdepaula/flutter_toro
```

Abra o projeto:
```
$ cd flutter_toro
```

Agora inicie o aplicativo no seu emulador ou dispositivo conectado (Usando o terminal):
```
$ flutter run



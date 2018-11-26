<h1> Descrição </h1>

Teste desenvolvido na linguagem Ruby, com o framkework Capybara e utilizando BDD com Cucumber

<h2> Configuração </h2>

>>Configurar Ruby

1. Instalar e configurar Ruby de acordo com a versão do SO - https://rubyinstaller.org/downloads/

>>Configurar chromedriver

1. Fazer download da ultima versão do chromedriver de acordo com a versão do SO - http://chromedriver.chromium.org/downloads

>> Instalar bundler

Instalar bundler para facilitar a instalação das gems necessárias

2. Executar via linha de comando -> gem install bundler

>> Configurar cucumber, capybara e as demais gems necessárias 

Todos esses pacotes estão sendo referenciados no arquivo chamado Gemfile 

Para instalar/atualizar todas as gems executar o comando abaixo

1. bundle install

<h2> Executar o teste </h2>

Acessar a pasta inicial do projeto

1. Executar o comando --> cucumber

<h2> Descrição do teste </h2>

1. Acessar o site: http://demo.cs-cart.com/.
2. No campo “Procurar Produtos” pesquise usando o valor “Batman”.
3. No resultado da pesquisa clique em um dos resultados apresentados.
4. Na tela do produto pressione o botão “Adicionar ao carrinho”.
5. Repita os passos 2 a 4, pesquisando pelo item “PS3”.
6. Valide no carrinho de compras se o produto foi adicionado com sucesso.

# Projeto base para automação de testes

### Ambiente
OBS.: Utilizar as últimas versões disponíveis do Chrome e chromedriver
- [Ruby](https://www.ruby-lang.org/pt/ "Ruby")
- [Bundler](https://bundler.io/ "Bundler")
- [Chrome](https://www.google.com/intl/pt-BR/chrome/ "Chrome")
- [chromedriver](https://chromedriver.chromium.org/downloads "chromedriver")


### Configuração

Clone o repositório:
```
git clone git@github.com:delonborges/test-automation-template.git
```
Acesse a pasta do projeto:
```
cd test-automation-template
```
Efetue a instalação das _gem's_ necessárias:
```
bundle install
```


### Execução
Inicie a execução dos testes
```
cucumber
```
Caso queira gerar um arquivo HTML para análise, execute o comando:
```
cucumber --format html --out=log/report.html

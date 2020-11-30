# Projeto base para automação de testes

### Configuração

Clone o repositório:
```
git clone git@github.com:delonborges/test-automation-template.git
```
Acesse a pasta do projeto:
```
cd automation-project
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

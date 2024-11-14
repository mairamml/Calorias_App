# Calorias_App
## Mini App de Calorias por Ingrediente em Swift

Este é um aplicativo simples em Swift que permite pesquisar um ingrediente e obter o número de calorias associadas a ele em diferentes receitas. Ele utiliza uma API pública para buscar as informações nutricionais de ingredientes comumente consumidos.

### Objetivo
Foi construído para testar a implementação de uma API no aplicativo [EasyMarket](https://github.com/mairamml/EasyMarketApp). Este está sendo desenvolvido como trabalho de conclusão da disciplina de Tópicos em Desenvolvimento iOS

## Funcionalidades

- **Busca de calorias por ingrediente**: Permite pesquisar o nome de um ingrediente e retorna o valor calórico do ingrediente em várias receitas.
- **Retorno estruturado**: A API fornece a resposta em formato JSON, facilitando o consumo das informações pelo app.

## API Utilizada

Este projeto utiliza a API externa [Calorias por Alimento](https://caloriasporalimentoapi.herokuapp.com) que fornece informações nutricionais básicas sobre alimentos, disponível neste [repositório](https://github.com/TadeunASCIImento/api-calorias-por-alimento-springboot)

- **Endpoint de busca**: `GET /api/calorias/?descricao={ingrediente}`
  - Exemplo de URL: `https://caloriasporalimentoapi.herokuapp.com/api/calorias/?descricao=Salmão`
  - **Resposta**: Retorna informações como a descrição do alimento, quantidade e valor calórico.

## Exemplo de Resposta da API

```json
[
  {
    "id": {
      "timestamp": 1594720595,
      "date": "2020-07-14T09:56:35.000+00:00"
    },
    "descricao": "Salmão defumado",
    "quantidade": "1/2 filé (178 g)",
    "calorias": "281 kcal"
  },
  {
    "id": {
      "timestamp": 1594720795,
      "date": "2020-07-14T09:59:55.000+00:00"
    },
    "descricao": "Salmão",
    "quantidade": "1/2 filé (178 g)",
    "calorias": "367 kcal"
  }
]


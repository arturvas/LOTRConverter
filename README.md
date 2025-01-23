# LOTRConverter17

**LOTRConverter17** é um aplicativo de conversão de moedas fictícias inspirado no universo de fantasia de **O Senhor dos Anéis**.

## Capturas de Tela

### Tela Principal
<div style="display: flex; gap: 10px;">
   <img src="https://github.com/arturvas/LOTRConverter/blob/main/LOTRConverter17/Screenshots/mainscreen.png" alt="Tela Principal" width=300" />
   <img src="https://github.com/arturvas/LOTRConverter/blob/main/LOTRConverter17/Screenshots/selection.png" alt="Selecao de moeda" width="300"/>
   <img src="https://github.com/arturvas/LOTRConverter/blob/main/LOTRConverter17/Screenshots/info.png" alt="Info" width="300"/>
</div>

## Funcionalidades

- **Conversão de Moedas**: Permite converter valores entre diferentes moedas fictícias, como peças de ouro e prata.
- **Seleção Dinâmica de Moedas**: Interface simples para trocar as moedas usadas na conversão.
- **Dicas Interativas**: Utilização do `TipKit` para melhorar a usabilidade com dicas de interação.
- **Tema Personalizado**: Imagens temáticas e interface estilizada para refletir o universo do aplicativo.
- **Suporte ao Teclado Numérico**: Foco automático para digitação e entrada de valores.

## Tecnologias e Componentes Utilizados

- **SwiftUI**: Framework utilizado para construir a interface do usuário.
- **TipKit**: Adiciona dicas interativas contextuais, aprimorando a experiência do usuário.
- **Arquitetura Modular**: Código organizado em componentes independentes, incluindo:
  - `Currency.swift`: Define as moedas disponíveis.
  - `CurrencyTip.swift`: Gerencia dicas interativas.
  - `ExchangeInfo.swift`: Apresenta informações adicionais sobre o processo de câmbio.
  - `SelectCurrency.swift`: Tela para selecionar moedas para conversão.
- **Assets.xcassets**: Gerenciamento de recursos gráficos, como ícones e imagens temáticas.
- **Personalização Visual**:
  - Imagens temáticas (`prancingpony`, `background`) para uma imersão completa.
  - Uso de animações suaves, como o efeito de "pulse" no ícone de igual.

## Estrutura do Projeto

- **ContentView.swift**: Tela principal do app.
- **Currency.swift**: Define a lógica de moedas, incluindo nomes, ícones e conversões.
- **ExchangeRate.swift**: Implementa cálculos de conversão.
- **SelectCurrency.swift**: Tela de seleção dinâmica de moedas.
- **CurrencyTip.swift**: Configura dicas interativas usando `TipKit`.

## Como Rodar o Projeto

1. Clone o repositório no Xcode.
2. Certifique-se de ter o **iOS 16+** como versão mínima.
3. Execute o projeto em um simulador ou dispositivo real.

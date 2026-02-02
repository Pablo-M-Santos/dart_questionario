# Fundamentos do Flutter – 📱 Questionário Flutter

Este repositório contém um aplicativo simples de **Questionário desenvolvido em Flutter**, com o objetivo de praticar os **fundamentos de Dart e Flutter**.  
- Widgets Stateless e Stateful
- Passagem de funções como parâmetro
- Gerenciamento de estado
- Listas e mapas
- Estruturação de componentes
- Interação com o usuário

O aplicativo exibe perguntas com múltiplas respostas, soma a pontuação escolhida e mostra um **resultado final**, com opção de reiniciar o questionário.

---

## 📁 Estrutura do Projeto
```
flutter_questionarios/
├── lib/
│   ├── main.dart
│   ├── questionario.dart
│   ├── questao.dart
│   ├── resposta.dart
│   └── resultado.dart
├── pubspec.yaml
└── README.md
```

## ▶️ Como Executar

1. Clone o repositório:
```bash
git clone https://github.com/Pablo-M-Santos/dart_questionario
```

2. Entre na pasta do projeto:
```bash
cd flutter_questionario
```

1. Execute o projeto:
```bash
flutter run
```

## 🧠 Funcionamento do Aplicativo

- O aplicativo exibe uma pergunta por vez
- Cada resposta possui uma pontuação
- Ao selecionar uma resposta:
  - A pontuação é somada
  - A próxima pergunta é exibida
- Ao final:
  - Uma mensagem de resultado é exibida com base na pontuação total
  - O usuário pode reiniciar o questionário

## 📝 Componentes do Projeto

main.dart
- Arquivo principal da aplicação
- Gerencia o estado do questionário
- Controla a pergunta atual e a pontuação total
- Decide entre exibir o questionário ou o resultado final
  
questionario.dart
- Responsável por exibir a pergunta atual e suas respostas
- Recebe:
  - Lista de perguntas
  - Índice da pergunta atual
  - Função para responder
  
questao.dart
- Widget responsável por exibir o texto da pergunta
- Utiliza StatelessWidget

resposta.dart
- Widget de botão para cada resposta
- Executa a função de resposta ao ser pressionado

resultado.dart
- Exibe a mensagem final baseada na pontuação total
- Possui botão para reiniciar o questionário

## 🏆 Critério de Resultado
A mensagem exibida ao final depende da pontuação total:

- 25 pontos ou mais → Excelente!
- 15 a 24 pontos → Muito bom!
- 10 a 14 pontos → Bom!
- Abaixo de 10 pontos → Pode melhorar!

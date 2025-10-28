# Mais Habil: Plataforma de Troca de Habilidades

## 🎯 Visão Geral do Projeto

**Mais Habil** é um aplicativo móvel desenvolvido para facilitar a troca de conhecimentos e habilidades entre pessoas. Em um mundo onde o conhecimento é a moeda mais valiosa, esta plataforma conecta usuários que desejam aprender algo novo com aqueles que estão dispostos a ensinar, promovendo uma comunidade de aprendizado mútuo e colaborativo.

O conceito central é o *escambo de habilidades*: por exemplo, um usuário que sabe tocar violão pode se conectar com outro que oferece aulas de conserto de computadores. No entanto, a plataforma é flexível. A comunicação é feita via chat, permitindo que os usuários negociem a troca, ofereçam conhecimento gratuitamente ou simplesmente busquem aprendizado sem a obrigação de uma troca imediata.

## ✨ Funcionalidades Principais

| Funcionalidade | Descrição | Arquivos Dart Relacionados |
| :--- | :--- | :--- |
| **Autenticação Segura** | Cadastro e login de usuários com Firebase Authentication. | `login_page.dart`, `cadastro_page.dart`, `criacao_usuario_page.dart` |
| **Perfis de Usuário** | Visualização e edição de perfis, permitindo que os usuários listem suas habilidades e interesses. | `perfil_usuario_page.dart` |
| **Busca e Descoberta** | Funcionalidade de pesquisa para encontrar usuários e habilidades específicas na plataforma. | `pesquisa_page.dart` |
| **Sistema de Chat** | Mensagens em tempo real para negociação e coordenação das trocas de conhecimento. | `todos_os_chats_page.dart`, `chat_page.dart` |
| **Backend Firebase** | Regras de segurança e índices otimizados para garantir a integridade e o desempenho dos dados. | `firestore.rules`, `firestore.indexes.json` |

## 🛠️ Stack Tecnológico

O projeto foi construído utilizando as seguintes tecnologias:

*   **Framework:** Flutter
*   **Linguagem:** Dart
*   **Backend:** Google Firebase
    *   **Autenticação:** Firebase Auth
    *   **Banco de Dados:** Cloud Firestore

### Dependências Principais (Conforme `pubspec.yaml`):

O projeto utiliza uma série de pacotes para otimizar o desenvolvimento, com destaque para:

*   `cloud_firestore` e `firebase_auth`: Para integração com o backend.
*   `dash_chat` (customizado do FlutterFlow): Para a funcionalidade de chat.
*   `go_router`: Para navegação no aplicativo.
*   `cached_network_image`: Para gerenciamento eficiente de imagens de rede.
*   `google_fonts`: Para uma tipografia moderna e consistente.

## 🏛️ Arquitetura e Estrutura de Pastas

A estrutura de pastas segue uma organização clara e modular, facilitando a manutenção e a escalabilidade:

```
mais_habil/
├── lib/
│   ├── backend/
│   │   └── firebase/
│   │       ├── firestore.indexes.json  # Índices do Firestore
│   │       └── firestore.rules         # Regras de Segurança do Firestore
│   └── pages/                          # Telas e UI do aplicativo
│       ├── cadastro_page.dart
│       ├── chat_page.dart
│       ├── criacao_usuario_page.dart
│       ├── login_page.dart
│       ├── perfil_usuario_page.dart
│       ├── pesquisa_page.dart
│       └── todos_os_chats_page.dart
├── assets/                             # Arquivos estáticos (imagens, vídeos, etc.)
├── pubspec.yaml                        # Metadados e dependências do projeto
└── README.md                           # Documentação do projeto
```

## 🔐 Regras de Segurança do Firestore (`firestore.rules`)

As regras de segurança foram configuradas para garantir que apenas usuários autenticados e autorizados possam acessar e modificar os dados, refletindo a lógica de acesso do aplicativo:

| Coleção | Permissões | Lógica de Segurança |
| :--- | :--- | :--- |
| `user` | `create`, `write`, `delete` | Apenas o próprio usuário (`request.auth.uid`) pode criar, editar ou deletar seu documento. |
| `user` | `read` | **Leitura pública (`if true`)** para permitir a busca de perfis na funcionalidade de descoberta de habilidades. |
| `chats` | `create`, `read`, `write` | Acesso permitido apenas se o usuário fizer parte da lista de participantes (`users`) do chat. |
| `chat_messages` | `create` | Permissão para criar mensagens apenas se o usuário for o remetente (`request.resource.data.user`) e fizer parte do chat. |
| `chat_messages` | `read` | Acesso permitido apenas se o usuário fizer parte do chat associado à mensagem. |

## 🚀 Como Executar o Projeto

Este projeto foi gerado a partir do FlutterFlow e requer a configuração de um projeto Firebase para funcionar completamente.

### Pré-requisitos

1.  **Flutter SDK:** Versão compatível com as dependências (ver `pubspec.yaml`).
2.  **Firebase Project:** Um projeto ativo no console do Firebase.
3.  **Configuração do Flutter:** Configurar o ambiente para desenvolvimento mobile (Android/iOS).

### Passos para Configuração

1.  **Clonar o Repositório:**
    ```bash
    git clone [URL_DO_SEU_REPOSITORIO]
    cd mais_habil
    ```

2.  **Configurar o Firebase:**
    *   Crie um novo projeto no Firebase.
    *   Habilite o **Firebase Authentication** (métodos de login por Email/Senha e Google, se necessário).
    *   Habilite o **Cloud Firestore**.
    *   Copie o conteúdo de `lib/backend/firebase/firestore.rules` e `lib/backend/firebase/firestore.indexes.json` para as respectivas seções no console do Firebase.
    *   Siga as instruções do Flutter para adicionar os arquivos de configuração específicos da plataforma (`google-services.json` para Android e `GoogleService-Info.plist` para iOS).

3.  **Instalar Dependências:**
    ```bash
    flutter pub get
    ```

4.  **Executar o Aplicativo:**
    ```bash
    flutter run
    ```

---

**Desenvolvido por:** [Seu Nome/Usuário do GitHub]
**Status:** Projeto de Portfólio (Exportado do FlutterFlow)

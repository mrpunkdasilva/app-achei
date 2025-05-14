<p align="center">
  <img src="assets/images/favicon/IconDark.svg" alt="Achei Logo" width="200"/>
</p>

<h1 align="center">Achei</h1>

<p align="center">
  <img src="https://img.shields.io/badge/Nuxt-3.0-00DC82?style=for-the-badge&logo=nuxt.js" alt="Nuxt 3" />
  <img src="https://img.shields.io/badge/Vue.js-3.0-4FC08D?style=for-the-badge&logo=vue.js" alt="Vue 3" />
  <img src="https://img.shields.io/badge/TypeScript-4.9-3178C6?style=for-the-badge&logo=typescript" alt="TypeScript" />
  <img src="https://img.shields.io/badge/Firebase-Backend-FFCA28?style=for-the-badge&logo=firebase" alt="Firebase" />
</p>

## 🎯 Sobre o Projeto

**Achei** é uma solução inovadora para recuperação de objetos perdidos através de QR Codes. Utilizando tecnologias modernas e uma arquitetura robusta, oferecemos uma plataforma segura e eficiente para conectar pessoas que perderam seus pertences com aquelas que os encontraram.

### 🌟 Características Principais

- 🔐 Sistema de autenticação seguro
- 📱 Interface responsiva e intuitiva
- 🔄 Geração dinâmica de QR Codes
- 💬 Chat em tempo real
- 📦 Gerenciamento de itens perdidos
- 🎨 Design system consistente
- 🌙 Modo escuro/claro

## 🏗️ Arquitetura

O projeto segue os princípios da Clean Architecture e Domain-Driven Design (DDD), integrado com Firebase:

```
src/
├── core/           # Regras de negócio e entidades
├── infrastructure/ # Implementações externas
│   ├── firebase/   # Configuração e serviços Firebase
│   └── services/   # Outros serviços externos
├── presentation/   # Interface do usuário
└── shared/         # Utilitários compartilhados
```

### 🔧 Serviços Firebase

- **Authentication**: Gestão de usuários e autenticação
- **Firestore**: Banco de dados em tempo real
- **Storage**: Armazenamento de imagens e QR Codes
- **Cloud Functions**: Processamento serverless
- **Hosting**: Deploy e hospedagem

### 🔧 Padrões de Projeto

- **Criacionais**: Factory Method, Builder, Singleton
- **Estruturais**: Adapter, Facade, Composite
- **Comportamentais**: Observer, Strategy, State

## 🚀 Começando

### Pré-requisitos

- Node.js (v16+)
- pnpm
- Git
- Firebase CLI (`npm install -g firebase-tools`)

### Instalação

```bash
# Clone o repositório
git clone https://github.com/seu-usuario/achei.git

# Entre no diretório
cd achei

# Instale as dependências
pnpm install

# Configure as variáveis de ambiente
cp .env.example .env

# Login no Firebase
firebase login

# Inicialize o projeto Firebase
firebase init

# Inicie o servidor de desenvolvimento
pnpm dev
```

## 📚 Documentação

- [Documentação Técnica](docs/technical.md)
- [Guia de Arquitetura](docs/architecture.md)
- [Guia de Contribução](CONTRIBUTING.md)
- [Changelog](CHANGELOG.md)

## 🧪 Testes

```bash
# Testes unitários
pnpm test

# Testes e2e
pnpm test:e2e

# Cobertura de testes
pnpm test:coverage
```

## 🤝 Contribuindo

1. Fork o projeto
2. Crie sua Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'feat: Add some AmazingFeature'`)
4. Push para a Branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📝 Convenções

### Commits

Seguimos o [Conventional Commits](https://www.conventionalcommits.org/):

- `feat`: Nova funcionalidade
- `fix`: Correção de bug
- `docs`: Documentação
- `style`: Formatação
- `refactor`: Refatoração
- `test`: Testes
- `chore`: Manutenção

### Branches

- `main`: Produção
- `develop`: Desenvolvimento
- `feature/*`: Novas funcionalidades
- `bugfix/*`: Correções
- `release/*`: Preparação de release
- `hotfix/*`: Correções urgentes

## 📜 Licença

Este projeto está sob a licença MIT - veja o arquivo [LICENSE.md](LICENSE) para detalhes.

---

<p align="center">
  Feito com ❤️ pela equipe Achei
</p>
<p align="center">
   <img src="https://user-images.githubusercontent.com/46109133/236302177-f6c8509b-6124-47b9-ba9e-2d12b06fcd3e.png" alt="Travels App" width="200"/>
</p>

<h1 align="center">Travels App</h1>

<p align="center">
   Aplicativo Flutter para estruturar roteiros de viagens — destinos, atividades e cronograma.
</p>

<p align="center">
   <a href="https://www.linkedin.com/in/igor-sthaynny/">
      <img alt="Igor Sthaynny" src="https://img.shields.io/badge/-Sthaynny-5965e0?style=flat&logo=Linkedin&logoColor=white"/>
   </a>
  <img alt="Languages" src="https://img.shields.io/github/languages/count/Sthaynny/travels_app?color=%235963C5" />
  <img alt="lastcommit" src="https://img.shields.io/github/last-commit/Sthaynny/travels_app?color=%235761C3" />
  <img alt="License" src="https://img.shields.io/github/license/Sthaynny/travels_app?color=%235E69D7" />
  <img alt="Issues" src="https://img.shields.io/github/issues/Sthaynny/travels_app?color=%235965E0">
  <a href="mailto:igorsthaynny@gmail.com">
   <img alt="E-mail" src="https://img.shields.io/badge/-igorsthaynny%40gmail.com-%23525DCB" />
  </a>
</p>

<hr />

## Sobre o projeto

O **Travels App** ajuda viajantes a montar e organizar roteiros completos: definir datas, ordenar destinos, planejar atividades por dia e acompanhar o cronograma da viagem.

## Stack

| Tecnologia | Uso |
|------------|-----|
| Flutter 3.44+ | Framework multiplataforma |
| Dart 3.12+ | Linguagem |
| flutter_bloc | Gerenciamento de estado |
| go_router | Navegação declarativa |
| get_it | Injeção de dependências |
| Firebase | Auth, Core, Storage |
| google_fonts / lottie | Tipografia e animações |

## Estrutura do projeto

```
lib/
├── app/           # Bootstrap do app e router
├── core/          # Design system, rotas, DI
└── feature/       # Módulos por funcionalidade
    ├── splash/
    ├── home/
    ├── itinerary/     (planejado)
    ├── destinations/  (planejado)
    └── auth/          (planejado)
```

Documentação completa em [`docs/`](./docs/README.md).

## Como rodar

### Pré-requisitos

- Flutter 3.44+ ([instalação](https://docs.flutter.dev/get-started/install))
- Dart 3.12+

### Comandos

```bash
# Clone o repositório
git clone https://github.com/Sthaynny/travels_app.git
cd travels_app

# Instale as dependências
flutter pub get

# Execute o app
flutter run
```

### Qualidade

```bash
flutter analyze
flutter test
```

## Documentação

| Documento | Conteúdo |
|-----------|----------|
| [Arquitetura](./docs/architecture.md) | Camadas, pastas e padrões |
| [Plano de viabilidade](./docs/viability-plan.md) | Análise técnica e de produto |
| [Roadmap](./docs/roadmap.md) | Fases de evolução |
| [Auditoria](./docs/audit.md) | Estado da documentação |

## Roles do Cursor (IA)

Regras para agentes em [`.cursor/rules/`](./.cursor/rules/):

- **general** — contexto geral do projeto
- **architecture** — camadas e módulos
- **ui** — design system e experiência

## Contribuição

Consulte o [guia de contribuição](.github/contributing.md).

Para habilitar o hook de pré-commit:

```bash
cp pre-commit .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit
```

## Issues

Encontrou um problema? Abra uma [nova issue](https://github.com/Sthaynny/travels_app/issues).

## Licença

Este projeto está sob a [MIT License](./LICENSE).

---

<div align="center">
  <sub>Feito com 💖 por
    <a href="https://github.com/Sthaynny">Igor Sthaynny</a>
  </sub>
</div>

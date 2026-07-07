# Roadmap

Plano de evolução do **Travels App** por fases. Atualize este documento a cada entrega.

## Status atual — Fase 0 ✅

- [x] Projeto Flutter estruturado (feature-first)
- [x] Design system base (`DSColor`, `DSFontStyle`, tokens)
- [x] Splash animado com Lottie
- [x] Navegação com GoRouter
- [x] Dependências atualizadas (Flutter 3.44, Dart 3.12)
- [x] Documentação e roles do Cursor
- [x] Plano de viabilidade

## Fase 1 — MVP de roteiros

**Objetivo**: Usuário cria e visualiza um roteiro completo.

### Backend e infra

- [ ] Configurar Firebase (Auth, Firestore ou Realtime DB)
- [ ] Setup de `core/di/` com GetIt
- [ ] Inicialização segura do Firebase em `main.dart`

### Feature: Auth

- [ ] Tela de login/cadastro (e-mail + senha)
- [ ] Fluxo de sessão com Firebase Auth
- [ ] Route guard no GoRouter

### Feature: Itinerary

- [ ] Entidades: `Itinerary`, `TravelDay`, `Destination`, `Activity`
- [ ] Tela de listagem de roteiros
- [ ] Tela de criação/edição de roteiro
- [ ] Tela de detalhe com cronograma por dia
- [ ] BLoC para cada fluxo

### Qualidade

- [ ] Testes unitários de use cases
- [ ] Testes de widget para telas principais
- [ ] CI com `flutter analyze` + `flutter test`

## Fase 2 — Experiência completa

**Objetivo**: Tornar o app útil em viagem real.

- [ ] Persistência offline (Hive ou Drift)
- [ ] Sincronização ao reconectar
- [ ] Upload de fotos (Firebase Storage)
- [ ] Exportar roteiro em PDF
- [ ] Notificações locais (lembrete de atividade)
- [ ] Tema escuro

## Fase 3 — Colaboração e descoberta

**Objetivo**: Roteiros compartilháveis e descoberta de destinos.

- [ ] Compartilhar roteiro (link ou convite)
- [ ] Roteiros públicos / templates
- [ ] Integração com mapas (Google Maps)
- [ ] Sugestões de pontos de interesse
- [ ] Busca e filtros avançados

## Fase 4 — Escala e monetização

**Objetivo**: Produto sustentável.

- [ ] Plano premium (offline ilimitado, export, sem ads)
- [ ] Analytics e crash reporting
- [ ] Internacionalização (i18n)
- [ ] Versão web (Flutter Web)
- [ ] Parcerias com serviços de viagem

## Convenção de versionamento

| Versão app | Fase | Entrega principal |
|------------|------|-------------------|
| 1.0.x | Fase 0 | Fundação |
| 1.1.x | Fase 1 | MVP roteiros |
| 1.2.x | Fase 2 | Offline + mídia |
| 2.0.x | Fase 3 | Colaboração |
| 3.0.x | Fase 4 | Monetização |

## Como contribuir com o roadmap

1. Abra uma issue descrevendo a feature e a fase alvo
2. Vincule o PR à issue
3. Atualize os checkboxes deste arquivo na PR que entregar a feature

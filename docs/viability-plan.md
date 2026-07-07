# Plano de viabilidade

Análise de viabilidade técnica e de produto para o **Travels App**.

## Resumo executivo

O Travels App é viável como produto mobile multiplataforma (Android/iOS) usando Flutter. O repositório já possui fundação sólida: design system, navegação, splash animado e dependências atualizadas para Flutter 3.44. O próximo passo crítico é implementar o domínio de roteiros e autenticação.

## Problema e proposta de valor

| Aspecto | Descrição |
|---------|-----------|
| **Problema** | Viajantes organizam roteiros em planilhas, notas soltas ou apps genéricos sem foco em itinerário |
| **Solução** | App dedicado para montar roteiros dia a dia, com destinos, atividades e cronograma |
| **Público** | Viajantes independentes, casais, pequenos grupos |
| **Diferencial** | Foco em estrutura de roteiro (não só reserva de hotel/voo) |

## Viabilidade técnica

### Pontos fortes

- Flutter 3.44 com Dart 3.12 — stack moderna e suportada
- Arquitetura feature-first já iniciada
- Design system com tokens tipográficos e de cor
- Firebase já declarado nas dependências (Auth + Storage)
- GoRouter e BLoC — padrões maduros para escala

### Riscos e mitigação

| Risco | Impacto | Mitigação |
|-------|---------|-----------|
| Firebase não configurado | Alto | Adicionar `google-services.json` / `GoogleService-Info.plist` e init em `main.dart` |
| Sem persistência local | Médio | Adicionar Hive/Drift na Fase 2 para offline |
| Escopo amplo (mapas, clima, booking) | Alto | Manter MVP focado em CRUD de roteiro |
| Dependência de APIs externas | Médio | Integrar mapas/clima apenas após MVP validado |

### Esforço técnico estimado por componente

| Componente | Complexidade | Dependências |
|------------|--------------|--------------|
| CRUD de roteiros | Média | Firebase Firestore ou Storage + modelo local |
| Lista de destinos/atividades | Baixa | Módulo itinerary |
| Autenticação | Média | Firebase Auth |
| Sincronização offline | Alta | Cache local + conflict resolution |
| Compartilhamento de roteiro | Média | Firebase + deep links |
| Mapa integrado | Alta | Google Maps / Mapbox SDK |

## Viabilidade de produto

### MVP (mínimo viável)

Funcionalidades essenciais para validar o produto:

1. Criar roteiro com título e datas
2. Adicionar destinos em ordem
3. Adicionar atividades por dia
4. Visualizar cronograma (timeline ou lista por dia)
5. Salvar e recuperar roteiros (conta do usuário)

### Métricas de sucesso do MVP

- Usuário cria um roteiro completo em menos de 10 minutos
- Taxa de retenção D7 > 20% (beta fechado)
- NPS > 30 entre early adopters

### Monetização (futuro)

| Modelo | Viabilidade |
|--------|-------------|
| Freemium (limite de roteiros) | Alta — baixo atrito |
| Assinatura premium (offline, export PDF) | Média — requer valor percebido |
| Afiliados (hotéis, tours) | Baixa no curto prazo — requer volume |

## Viabilidade operacional

- **Time mínimo**: 1 dev Flutter + 1 designer (part-time) para MVP
- **Infra**: Firebase Spark (gratuito) suficiente para beta
- **CI/CD**: GitHub Actions com `flutter test` + `flutter analyze`
- **Lojas**: Conta Google Play + Apple Developer necessárias para publicação

## Decisão recomendada

| Critério | Avaliação |
|----------|-----------|
| Viabilidade técnica | ✅ Alta |
| Viabilidade de produto | ✅ Alta (com MVP enxuto) |
| Viabilidade financeira (solo/indie) | ✅ Média-Alta |
| Risco geral | 🟡 Médio (escopo e Firebase config) |

**Recomendação**: Prosseguir com desenvolvimento em fases conforme `roadmap.md`, priorizando MVP de roteiros antes de integrações externas.

## Critérios de go/no-go para próxima fase

Avançar para Fase 2 somente se:

- [ ] Firebase configurado e Auth funcional
- [ ] CRUD de roteiro funcionando end-to-end
- [ ] `flutter analyze` sem issues
- [ ] Pelo menos 3 testes de widget/BLoC cobrindo fluxos críticos
- [ ] Feedback de 5+ usuários beta sobre usabilidade do cronograma

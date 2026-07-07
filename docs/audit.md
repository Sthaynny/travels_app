# Auditoria de documentação

Relatório de auditoria realizada em julho/2026 para o repositório **travels_app**.

## Escopo

- `README.md`
- `.github/` (contributing, issue template, PR template, types-of-contributions)
- `pubspec.yaml`
- Estrutura `lib/`
- Ausência de `docs/` e `.cursor/rules/`

## Achados

### Críticos (corrigidos)

| # | Arquivo | Problema | Status |
|---|---------|----------|--------|
| C1 | `README.md` | Referências ao projeto legado `habilitacao_quiz` | ✅ Corrigido |
| C2 | `README.md` | Descrição genérica "Breve descricao do projeto" | ✅ Corrigido |
| C3 | `.github/contributing.md` | Links e texto copiados do GitHub Docs oficial | ✅ Corrigido |
| C4 | `.github/types-of-contributions.md` | Conteúdo irrelevante (docs.github.com) | ✅ Corrigido |
| C5 | `pubspec.yaml` | SDK Dart 2.x incompatível com Flutter 3.44 | ✅ Corrigido |
| C6 | — | Ausência de documentação de arquitetura e roadmap | ✅ Criado `docs/` |

### Médios (corrigidos)

| # | Arquivo | Problema | Status |
|---|---------|----------|--------|
| M1 | `pubspec.yaml` | Dependências desatualizadas (2023) | ✅ Atualizado |
| M2 | `lib/feature/travels_app.dart` | App widget misturado com features | ✅ Movido para `lib/app/` |
| M3 | `splash_screen.dart` | `goNamed` com path em vez de name; async gap | ✅ Corrigido |
| M4 | — | Sem roles para agentes de IA | ✅ Criado `.cursor/rules/` |
| M5 | `README.md` | Badges apontando para repo errado | ✅ Corrigido |

### Baixos (pendentes / aceitos)

| # | Arquivo | Problema | Status |
|---|---------|----------|--------|
| B1 | `lib/core/ds/colors.dart` | Comentários de cor inconsistentes com valores hex | 📋 Documentado — revisar na Fase UI |
| B2 | `android/app/build.gradle` | `applicationId` duplicado (`travels_app.travels_app`) | 📋 Aceito — corrigir antes da publicação |
| B3 | — | Sem testes automatizados | 📋 Planejado na Fase 1 |
| B4 | — | Firebase declarado mas não inicializado | 📋 Planejado na Fase 1 |
| B5 | Screenshots no README | Imagens placeholder genéricas | 📋 Substituir após MVP |

## Inventário de documentação (pós-auditoria)

| Documento | Idioma | Atualizado | Responsável |
|-----------|--------|------------|-------------|
| `README.md` | pt-BR | ✅ | Maintainers |
| `docs/README.md` | pt-BR | ✅ | Maintainers |
| `docs/architecture.md` | pt-BR | ✅ | Maintainers |
| `docs/viability-plan.md` | pt-BR | ✅ | Maintainers |
| `docs/roadmap.md` | pt-BR | ✅ | Maintainers |
| `docs/audit.md` | pt-BR | ✅ | Maintainers |
| `.github/contributing.md` | pt-BR | ✅ | Maintainers |
| `.github/types-of-contributions.md` | pt-BR | ✅ | Maintainers |
| `.cursor/rules/general.mdc` | en/pt | ✅ | Maintainers |
| `.cursor/rules/architecture.mdc` | en/pt | ✅ | Maintainers |
| `.cursor/rules/ui.mdc` | en/pt | ✅ | Maintainers |

## Recomendações contínuas

1. Revisar `docs/roadmap.md` a cada sprint ou entrega significativa
2. Não copiar templates de outros repositórios sem adaptar ao contexto do projeto
3. Manter `pubspec.yaml` alinhado com a versão estável do Flutter (atualmente 3.44.x)
4. Adicionar screenshots reais do app antes da primeira release pública
5. Configurar CI no GitHub Actions para `flutter analyze` e `flutter test`

## Histórico

| Data | Ação |
|------|------|
| 2026-07-07 | Auditoria inicial, correções e criação de `docs/` + `.cursor/rules/` |

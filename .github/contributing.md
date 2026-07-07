# Guia de contribuição

Obrigado por contribuir com o **Travels App** — aplicativo Flutter para estruturar roteiros de viagens.

## Antes de começar

1. Leia o [README](../README.md) e a [arquitetura](../docs/architecture.md)
2. Verifique os [tipos de contribuição](./types-of-contributions.md) aceitos
3. Consulte o [roadmap](../docs/roadmap.md) para alinhar sua contribuição às fases do projeto

## Fluxo de trabalho

1. Faça um **fork** do repositório
2. Crie uma branch a partir de `main`:
   ```bash
   git checkout -b feat/minha-feature
   ```
3. Implemente seguindo as convenções do projeto:
   - Código em inglês, documentação e UI em português
   - Commits no padrão [Conventional Commits](https://www.conventionalcommits.org/)
   - `flutter analyze` sem erros
4. Envie um **Pull Request** usando o [template](./pull_request_template.md)

## Padrões de código

- Arquitetura feature-first (`lib/feature/`)
- Estado com `flutter_bloc`
- Navegação com `go_router`
- Tokens visuais do design system em `lib/core/ds/`
- Não acesse Firebase diretamente de widgets

## Hooks de pré-commit

```bash
cp pre-commit .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit
```

O hook executa formatação e verificação de estilo antes de cada commit.

## Issues

- Pesquise issues existentes antes de abrir uma nova
- Use o [template de issue](./issue_template.md)
- Vincule o PR à issue correspondente

## Dúvidas

Abra uma [issue](https://github.com/Sthaynny/travels_app/issues) ou entre em contato via [LinkedIn](https://www.linkedin.com/in/igor-sthaynny/).

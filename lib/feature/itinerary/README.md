# Módulo: Itinerary

> **Status**: Planejado — Fase 1 do roadmap

Gerenciamento de roteiros de viagem: criação, edição, listagem e visualização de cronograma.

## Entidades alvo

- `Itinerary` — roteiro com título, datas e status
- `TravelDay` — dia dentro do roteiro
- `Destination` — local visitado, com ordem na rota
- `Activity` — atividade vinculada a um dia/destino

## Estrutura prevista

```
itinerary/
├── presentation/
├── domain/
└── data/
```

Consulte `docs/architecture.md` e `docs/roadmap.md` para detalhes.

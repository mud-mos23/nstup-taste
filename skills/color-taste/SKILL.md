---
name: color-taste
description: Palette chromatique sophistiquée. Harmonie des couleurs, contrastes maîtrisés, pas de dégradés IA.
---

# Color Taste — Harmonie Chromatique

Construis des palettes de couleurs sophistiquées qui évoquent le raffinement.

## Règles

1. **Pas de dégradé violet/bleu startup**
2. **Pas de noir pur**
3. **Palette en 5 couleurs max** : 1 fond, 1 texte, 1 accent, 2 secondaires
4. **Contraste minimal AA** (4.5:1 pour le texte)

## Ambiances Recommandées

| Ambiance | Fond | Texte | Accent | Secondaires |
|----------|------|-------|--------|-------------|
| Éditorial | #faf8f5 | #1a1a1a | #c73e3e | #8b7355, #4a6fa5 |
| Luxe | #0a0a0b | #e8e6e3 | #c9a84c | #2a2a2e, #6b5b3e |
| Tech | #f5f7fa | #171a1f | #3b6ea5 | #4a5568, #a0aec0 |
| Nature | #f4f1ea | #2d2416 | #4a7c59 | #8b7355, #b8a99a |
| Créatif | #1a1a2e | #e8e6e3 | #e94560 | #16213e, #0f3460 |

## Gestion des Modes

- Variables CSS : `--color-bg`, `--color-text`, `--color-accent`, etc.
- Mode sombre : inverser fond/texte, réduire la saturation des couleurs
- Utiliser `oklch()` ou `hsl()` pour la manipulation des couleurs

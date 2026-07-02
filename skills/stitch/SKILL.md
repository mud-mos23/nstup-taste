---
name: stitch-design-taste
description: Export DESIGN.md compatible Google Stitch. Génère un fichier DESIGN.md avec le langage de design sémantique Stitch.
---

# Stitch — DESIGN.md pour Google Stitch

Génère un fichier `DESIGN.md` compatible avec Google Stitch, le langage de design sémantique.

## Format de Sortie

Stitch utilise des déclarations sémantiques dans un fichier `DESIGN.md` à la racine du projet.

```markdown
# Design System

## Colors
- `--color-bg`: #f8f7f4 — Fond principal
- `--color-text`: #1a1a1a — Texte principal
- `--color-accent`: #8b7355 — Accent ocre
- `--color-border`: #e5e3de — Bordures

## Typography
- Headings: Satoshi, sans-serif
- Body: Outfit, sans-serif
- Mono: JetBrains Mono, monospace

## Spacing
- Base unit: 4px
- Scale: 4, 8, 12, 16, 24, 32, 48, 64, 96, 128

## Components

### Button
- Padding: 12px 24px
- Border: 1px solid --color-border
- Hover: bg --color-text, text --color-bg
- Transition: 0.2s ease

### Card
- Padding: 24px
- Border-bottom: 1px solid --color-border
- Image aspect-ratio: 4/3
```

## Règles Stitch

- Utiliser les noms sémantiques Stitch (pas de noms de composants frameworks)
- Définir chaque token avec sa valeur et une description
- Les composants sont définis par leur rôle, pas par leur implémentation
- Garder DESIGN.md synchro avec la base de code réelle

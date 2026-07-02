---
name: redesign-existing-projects
description: Audit de code existant + redesign. Identifie les patterns génériques puis corrige layout, espacement, hiérarchie, style.
---

# Redesign — Rénovation Design

Audite d'abord le design existant, puis applique les corrections Nstup Taste.

## Audit Protocol
1. **Layout Review** — Y a-t-il des 3-colonnes égales ? Hero centré par défaut ?
2. **Typography Audit** — Inter ou Helvetica ? Échelle typographique ?
3. **Color Audit** — Dégradé violet/bleu ? Noir pur ?
4. **Spacing Audit** — Espacement cohérent ou valeurs arbitraires ?
5. **Motion Audit** — `transition: all` ? ScrollListener non optimisé ?

## Correction Plan
1. Layout → grille Nstup
2. Typo → échelle `clamp()`
3. Couleurs → palette sophistiquée
4. Espacement → tokens d'espace
5. Motion → spring physics

## Règle d'Or
Ne casse pas la fonctionnalité existante. Le redesign est visuel uniquement.

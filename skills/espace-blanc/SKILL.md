---
name: espace-blanc
description: Architecture du vide. Rythme, respiration, composition aérée. Le blanc comme élément de design.
---

# Espace Blanc — L'Architecture du Vide

L'espace blanc n'est pas un espace perdu — c'est l'élément qui donne sa valeur au reste.

## Principes Fondamentaux

1. **Règle du 40%** — Au moins 40% de la zone visible doit être de l'espace blanc
2. **Pas de contenu collé** — Toujours un padding minimum de 16px entre le contenu et les bords
3. **Respiration verticale** — `margin-top` et `margin-bottom` plus grands que les marges latérales
4. **Hiérarchie par l'espace** — Plus un élément est important, plus il est entouré d'espace

## Échelle d'Espacement

```css
:root {
  --space-xs: clamp(0.25rem, 0.15rem + 0.3vw, 0.5rem);
  --space-sm: clamp(0.5rem, 0.3rem + 0.5vw, 0.75rem);
  --space-md: clamp(1rem, 0.6rem + 1vw, 1.5rem);
  --space-lg: clamp(2rem, 1.2rem + 2vw, 3rem);
  --space-xl: clamp(3rem, 1.8rem + 3vw, 5rem);
  --space-2xl: clamp(5rem, 3rem + 5vw, 8rem);
  --space-3xl: clamp(8rem, 5rem + 8vw, 12rem);
}
```

## Le Vide comme Séparateur

- Pas de bordures horizontales — utiliser `padding-bottom` ou `gap`
- Pas de hr/separator — utiliser l'espace blanc
- Les sections se différencient par leur espacement, pas par leur fond

## Marges de Sections

```
 Section Normale  → --space-2xl
 Section Hero     → --space-3xl
 Section Footer   → --space-xl
 Entre Sections   → --space-2xl
```

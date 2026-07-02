---
name: typo-taste
description: Typographie française. Hiérarchie, grilles, rythme typographique, ligatures, guillemets français.
---

# Typo Taste — La Voix Française

La typographie française a une tradition d'élégance et de lisibilité. Respecte-la.

## Règles d'Or

1. **Une famille, deux poids** — Une police pour les titres, une pour le corps (ou la même en deux poids)
2. **Hiérarchie claire** — Le rapport entre H1 et corps doit être d'au moins 3:1
3. **Pas de largeur par défaut** — 65-75 caractères par ligne max, obtenu avec `ch` units
4. **Mesure** — `max-width: 65ch` pour le texte courant

## Échelle Typographique

```css
--text-xs: clamp(0.75rem, 0.7rem + 0.15vw, 0.875rem);
--text-sm: clamp(0.875rem, 0.8rem + 0.25vw, 1rem);
--text-base: clamp(1rem, 0.9rem + 0.3vw, 1.125rem);
--text-lg: clamp(1.125rem, 1rem + 0.4vw, 1.375rem);
--text-xl: clamp(1.375rem, 1.1rem + 0.6vw, 1.75rem);
--text-2xl: clamp(1.75rem, 1.3rem + 0.9vw, 2.5rem);
--text-3xl: clamp(2.5rem, 1.8rem + 1.5vw, 4rem);
--text-4xl: clamp(3rem, 2rem + 2.5vw, 5rem);
```

## Polices Recommandées

| Usage | Police | Lien |
|-------|--------|------|
| Titres | Satoshi | https://fonts.cdnfonts.com/css/satoshi |
| Titres alt | Cabinet Grotesk | https://fonts.cdnfonts.com/css/cabinet-grotesk |
| Titres serif | DM Serif Display | Google Fonts |
| Corps | Outfit | Google Fonts |
| Corps serif | DM Serif Text | Google Fonts |
| Mono | JetBrains Mono | Google Fonts |

## Règles Françaises

- « Guillemets français » — pas de "double quotes" anglaises
- Espaces insécables devant `:;!?»` — utiliser `\u00A0` ou CSS
- Pas de césure automatique (`hyphens: auto`) dans les titres
- Ligatures activées : `font-variant-ligatures: common-ligatures`

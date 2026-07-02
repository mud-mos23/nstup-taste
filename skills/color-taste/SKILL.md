---
name: color-taste
description: Palette chromatique sophistiquée. Harmonie des couleurs, contrastes maîtrisés. Utilisation d'oklch(), systèmes de couleur complets avec mode sombre.
---

# Color Taste — L'Harmonie Chromatique

La couleur est un langage. Elle parle avant que les mots n'existent.

---

## 1. Principes

1. **Moins de couleurs = plus d'impact** — 5 couleurs max par projet
2. **La couleur a un rôle** — chaque couleur remplit une fonction précise
3. **Le contraste est roi** — respecter WCAG AA (4.5:1) pour le texte
4. **Une seule couleur d'accent** — utilisée avec parcimonie (10% max de l'interface)
5. **Cohérence cross-mode** — la même palette doit fonctionner en clair et en sombre

---

## 2. Architecture de Palette

### Les 5 rôles

| Rôle | Usage | Quantité |
|------|-------|----------|
| **Fond** | Arrière-plan principal | 60% de l'interface |
| **Surface** | Cards, sidebar, dropdowns | 30% |
| **Texte** | Contenu lisible | Primaire + secondaire |
| **Accent** | Actions, liens, éléments clés | 5% |
| **Sémantique** | Success, error, warning | 5% (optionnel) |

### Format : oklch()

Toutes les couleurs doivent être définies en `oklch()` pour des harmonies cohérentes :

```css
:root {
  /* oklch(lightness chroma hue) */
  --color-bg: oklch(0.98 0.01 85);        /* Blanc chaud */
  --color-surface: oklch(0.96 0.01 85);   /* Surface légère */
  --color-text: oklch(0.15 0.02 85);      /* Texte principal */
  --color-text-secondary: oklch(0.55 0.02 85); /* Texte secondaire */
  --color-accent: oklch(0.55 0.12 75);    /* Accent ocre */
  --color-border: oklch(0.90 0.01 85);    /* Bordures */
}
```

Avantage d'oklch() : tu changes la teinte (hue) et toute la palette s'adapte harmonieusement.

---

## 3. Ambiances Prêtes à l'Emploi

### Éditorial — chaud, terreux, classique
```css
--color-bg: oklch(0.98 0.01 75);
--color-text: oklch(0.15 0.02 75);
--color-accent: oklch(0.50 0.15 40);
--color-surface: oklch(0.95 0.01 75);
```

### Luxe — froid, profond, doré
```css
--color-bg: oklch(0.04 0.01 300);
--color-text: oklch(0.92 0.01 80);
--color-accent: oklch(0.72 0.15 85);
--color-surface: oklch(0.08 0.01 300);
```

### Tech — neutre, bleuté, précis
```css
--color-bg: oklch(0.98 0.005 250);
--color-text: oklch(0.12 0.01 250);
--color-accent: oklch(0.55 0.18 260);
--color-surface: oklch(0.96 0.005 250);
```

### Nature — vert, beige, apaisant
```css
--color-bg: oklch(0.97 0.01 90);
--color-text: oklch(0.18 0.02 90);
--color-accent: oklch(0.55 0.15 150);
--color-surface: oklch(0.94 0.01 90);
```

### Créatif — sombre, saturé, vibrant
```css
--color-bg: oklch(0.08 0.02 280);
--color-text: oklch(0.93 0.01 80);
--color-accent: oklch(0.65 0.25 25);
--color-surface: oklch(0.12 0.02 280);
```

---

## 4. Mode Sombre Automatique

```css
:root {
  --lightness-bg: 0.98;
  --lightness-text: 0.15;
  --lightness-accent: 0.55;
  --hue: 75;
  --chroma-bg: 0.01;
  --chroma-accent: 0.12;

  --color-bg: oklch(var(--lightness-bg) var(--chroma-bg) var(--hue));
  --color-text: oklch(var(--lightness-text) 0.02 var(--hue));
  --color-accent: oklch(var(--lightness-accent) var(--chroma-accent) var(--hue));
}

@media (prefers-color-scheme: dark) {
  :root {
    --lightness-bg: 0.06;
    --lightness-text: 0.90;
    --lightness-accent: 0.65;
    --chroma-accent: 0.18;
  }
}
```

---

## 5. Règles Strictes

### Contrastes minimums
| Élément | Ratio minimum | Idéal |
|---------|--------------|-------|
| Texte corps | 4.5:1 (AA) | 7:1 (AAA) |
| Texte large (>18px bold / 24px) | 3:1 | 4.5:1 |
| Éléments non-textuels | 3:1 | 4.5:1 |

### Interdictions chromatiques
- ❌ Dégradé violet/bleu (marqueur IA générique)
- ❌ Noir `#000000` ou blanc `#ffffff` purs
- ❌ Couleurs néon sans contexte (sauf design brut)
- ❌ Plus de 2 couleurs saturées dans une même vue
- ❌ Couleurs sans contraste suffisant
- ❌ `#3b82f6`, `#8b5cf6`, `#6366f1` (palettes Tailwind par défaut)
- ❌ Palette arc-en-ciel (chaque élément d'une couleur différente)

### Règles d'or
- La couleur d'accent n'apparaît jamais sur fond de même teinte
- Les liens sont soulignés OU colorés, jamais les deux
- Les erreurs sont en rouge, les succès en vert — mais en versions sourdes
- Les couleurs de fond sont toujours désaturées (`chroma < 0.03`)

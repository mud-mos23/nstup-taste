---
name: espace-blanc
description: Architecture du vide. Rythme, respiration, composition aérée. Le blanc comme élément de design à part entière. Système d'espacement proportionnel clamp().
---

# Espace Blanc — L'Architecture du Vide

> "Le vide est la matière première du design." — Nstup

L'espace blanc n'est pas de l'espace perdu. C'est l'élément qui donne de la valeur à tout le reste. Un design sans espace blanc est un texte sans ponctuation.

---

## 1. La Philosophie du Vide

### Les 4 fonctions de l'espace blanc

1. **Séparer** — Distinguer les sections, les groupes, les éléments
2. **Hiérarchiser** — Plus d'espace = plus d'importance
3. **Respirer** — Donner du confort visuel, réduire la charge cognitive
4. **Valoriser** — Le vide autour d'un élément le rend précieux

### La règle du 40%
Au moins 40% de chaque viewport doit être de l'espace blanc. Si c'est moins, tu encombre.

---

## 2. Le Système d'Espacement

### Tokens d'espacement

```css
:root {
  --space-unit: 0.25rem; /* 4px à 16px de base */

  --space-xs: calc(var(--space-unit) * 1);    /* 4px → 0.25rem */
  --space-sm: calc(var(--space-unit) * 2);    /* 8px → 0.5rem */
  --space-md: calc(var(--space-unit) * 4);    /* 16px → 1rem */
  --space-lg: calc(var(--space-unit) * 6);    /* 24px → 1.5rem */
  --space-xl: calc(var(--space-unit) * 10);   /* 40px → 2.5rem */
  --space-2xl: calc(var(--space-unit) * 16);  /* 64px → 4rem */
  --space-3xl: calc(var(--space-unit) * 24);  /* 96px → 6rem */
  --space-4xl: calc(var(--space-unit) * 40);  /* 160px → 10rem */
}
```

### Échelle responsive

```css
:root {
  --space-xs: clamp(0.25rem, 0.2rem + 0.15vw, 0.5rem);
  --space-sm: clamp(0.5rem, 0.4rem + 0.3vw, 0.75rem);
  --space-md: clamp(1rem, 0.8rem + 0.5vw, 1.5rem);
  --space-lg: clamp(1.5rem, 1.2rem + 0.8vw, 2.5rem);
  --space-xl: clamp(2rem, 1.5rem + 1.2vw, 3.5rem);
  --space-2xl: clamp(3rem, 2rem + 2.5vw, 5rem);
  --space-3xl: clamp(5rem, 3.5rem + 4vw, 8rem);
  --space-4xl: clamp(8rem, 5rem + 6vw, 12rem);
}
```

---

## 3. L'Espacement par Contexte

### Marges de page
```css
.page {
  padding-inline: clamp(1rem, 5vw + 1rem, 8rem);
}
```

### Entre les sections
```css
.section + .section {
  margin-top: var(--space-3xl);
}
.section-hero {
  padding-block: var(--space-4xl);
}
.section-footer {
  padding-block: var(--space-2xl);
}
```

### Dans les composants
```css
.card {
  padding: var(--space-lg);
}
.card-header {
  margin-bottom: var(--space-md);
}
.card-body > * + * {
  margin-top: var(--space-sm);
}
```

### Gap de grille
```css
.grid-spacious {
  gap: var(--space-xl);
}
.grid-compact {
  gap: var(--space-md);
}
.grid-luxury {
  gap: var(--space-2xl);
}
```

---

## 4. Le Vide comme Séparateur

### Jamais de hr
```css
/* ❌ BANNI */
hr, .separator, .divider { display: none; }

/* ✅ À la place, utiliser l'espace */
.section {
  padding-block: var(--space-3xl);
}
```

### Jamais de background alternatif
Au lieu de changer le fond pour distinguer les sections, change l'espacement.

```css
/* ❌ BANNI */
.section:nth-child(even) { background: #f5f5f5; }

/* ✅ PRIVILÉGIER */
.section + .section { margin-top: var(--space-3xl); }
```

---

## 5. Règles de Respiration

### Règle du poing
Si tu peux mettre ton poing entre deux éléments, l'espace est suffisant.

### Règle des 8px
Tout espacement doit être un multiple de 8px (ou 4px pour les très petits espacements).

### Padding vs Margin
- **Padding** : espace à l'intérieur du contenant (bulle d'air autour du contenu)
- **Margin** : espace entre les contenants (distance entre les blocs)
- Ne jamais utiliser l'un à la place de l'autre

### Règle des bords
```css
/* Le contenu ne touche jamais les bords */
.element {
  padding: var(--space-lg);
}
```

---

## 6. Anti-Patterns d'Espacement

- ❌ Espacement incohérent (10px ici, 15px là, 20px ailleurs)
- ❌ `margin: 0 auto` avec valeurs hardcodées
- ❌ Espacement négatif (`margin-top: -20px`)
- ❌ Padding sur les éléments de texte (préférer margin)
- ❌ `height` fixe sur les sections (toujours utiliser padding)
- ❌ Éléments collés les uns aux autres sans gap
- ❌ Utiliser `br` pour créer de l'espace vertical
- ❌ Gap de 1px, 2px, 3px (pas dans l'échelle)

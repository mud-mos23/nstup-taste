---
name: typo-taste
description: Typographie française. Hiérarchie, grilles, rythme typographique, ligatures, guillemets français, échelle clamp().
---

# Typo Taste — La Voix Française

La typographie est l'architecture visible du langage écrit.

---

## 1. Principes Fondamentaux

### La Hiérarchie par le Contraste
Le rapport entre le plus grand et le plus petit texte doit être d'au moins 3:1.

### La Mesure
Un texte qui mesure plus de 75 caractères par ligne est illisible. Utilise `ch` units.

### Le Rythme Vertical
L'interlignage et les marges doivent suivre la grille de baseline.

### La Cohérence
Une famille typographique = une voix. Deux familles max par projet.

---

## 2. Échelle Typographique

### Échelle complète
```css
:root {
  --text-xs: clamp(0.7rem, 0.65rem + 0.15vw, 0.8rem);
  --text-sm: clamp(0.8rem, 0.75rem + 0.2vw, 0.9rem);
  --text-base: clamp(1rem, 0.9rem + 0.3vw, 1.125rem);
  --text-lg: clamp(1.125rem, 1rem + 0.4vw, 1.375rem);
  --text-xl: clamp(1.25rem, 1.1rem + 0.5vw, 1.625rem);
  --text-2xl: clamp(1.5rem, 1.3rem + 0.7vw, 2rem);
  --text-3xl: clamp(2rem, 1.6rem + 1.2vw, 3rem);
  --text-4xl: clamp(2.5rem, 1.8rem + 2vw, 4rem);
  --text-5xl: clamp(3rem, 2rem + 3vw, 5rem);
  --text-6xl: clamp(4rem, 2.5rem + 4vw, 7rem);
}
```

### Interlignage
```css
:root {
  --leading-tight: 1.1;
  --leading-snug: 1.25;
  --leading-normal: 1.5;
  --leading-relaxed: 1.6;
  --leading-loose: 1.8;
}
```

### Graisses
```css
:root {
  --weight-light: 300;
  --weight-regular: 400;
  --weight-medium: 500;
  --weight-semibold: 600;
  --weight-bold: 700;
}
```

---

## 3. Les Polices Nstup

### Recommandations par usage

| Usage | Police | Type | Où trouver |
|-------|--------|------|------------|
| **Titres sans-serif** | Satoshi | Géométrique | fontshare.com |
| **Titres sans-serif alt** | Cabinet Grotesk | Grotesque | fontshare.com |
| **Titres serif** | DM Serif Display | Serif | Google Fonts |
| **Titres serif alt** | Playfair Display | Serif | Google Fonts |
| **Corps sans-serif** | Outfit | Humaniste | Google Fonts |
| **Corps sans-serif alt** | Sora | Grotesque | Google Fonts |
| **Corps serif** | DM Serif Text | Serif | Google Fonts |
| **Corps serif alt** | Source Serif 4 | Serif | Google Fonts |
| **Mono** | JetBrains Mono | Mono | Google Fonts |
| **Mono alt** | DM Mono | Mono | Google Fonts |
| **Française** | Marianne | Humaniste | gouvernement.fr |

### Configuration Google Fonts
```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&family=DM+Serif+Display:ital@0;1&display=swap" rel="stylesheet">
```

---

## 4. Règles Typographiques Françaises

### Guillemets
- « **Guillemets français** » pour les citations
- Jamais de "double quotes" en français
- Espace insécable avant « et après »

### Ponctuation
- Espace insécable avant `:;!?»`
- En HTML : `&nbsp;` avant ces caractères
- En CSS : `white-space: nowrap` sur les spans contenant la ponctuation

```html
<!-- ✅ Correct -->
<p>Il disait&nbsp;: «&nbsp;Bonjour le monde&nbsp;!&nbsp;»</p>

<!-- ❌ Incorrect -->
<p>Il disait: "Bonjour le monde!"</p>
```

### Nombres
- Espace entre les groupes de 3 chiffres : 1 000 000
- Pas de virgule pour les milliers (usage anglais)
- Virgule pour les décimales : 3,14

### Ligatures
```css
body {
  font-variant-ligatures: common-ligatures;
  font-feature-settings: 'liga', 'clig';
}
```

### Césure
```css
/* Jamais de césure dans les titres */
h1, h2, h3, h4 {
  hyphens: none;
  word-break: break-word;
}

/* Césure autorisée dans le corps */
p {
  hyphens: auto;
  hyphenate-limit-chars: 6 3 3;
  hyphenate-limit-lines: 2;
}
```

---

## 5. Rythme Vertical

### La Grille de Baseline
```css
:root {
  --baseline: 1.5rem; /* 24px */
}

body {
  line-height: var(--baseline);
}

h1 {
  font-size: var(--text-4xl);
  line-height: calc(var(--baseline) * 2);
  margin-top: calc(var(--baseline) * 2);
  margin-bottom: var(--baseline);
}

p {
  margin-bottom: var(--baseline);
}
```

### Stack typographique
```css
.prose {
  max-width: 65ch;
}

.prose > * + * {
  margin-top: var(--baseline);
}

.prose > h2 {
  margin-top: calc(var(--baseline) * 3);
}

.prose > h3 {
  margin-top: calc(var(--baseline) * 2);
}
```

---

## 6. Ce que Typo Taste Interdit

- ❌ **Inter** — trop utilisé, devenu générique
- ❌ **Roboto** — fatigué, sans personnalité
- ❌ **Open Sans** — trop corporate
- ❌ **Montserrat** — surutilisé dans le design web
- ❌ **Poppins** — choisi par défaut sans réflexion
- ❌ **Lato** — sans relief
- ❌ Plus de 2 familles typographiques sur un même projet
- ❌ `font-size` en px (toujours `rem` ou `clamp()`)
- ❌ `line-height` sans unité
- ❌ Texte centré pour les longs paragraphes
- ❌ `text-justify` (créé des rivières)
- ❌ `letter-spacing` négatif sur le texte courant
- ❌ Texte sur image sans fond ou ombre

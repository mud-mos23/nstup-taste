---
name: industrial-brutalist-ui
description: Style brutaliste suisse. Typographie militaire, contrastes forts, grilles rigides, monochrome + un accent agressif. Pas de courbes, pas d'ombres, pas de compromis.
---

# Brutaliste — L'Industrie du Sens

La typographie suisse rencontre le terminal militaire. Brut, fonctionnel, sans compromis.

---

## 1. Philosophie

1. **La fonction est la forme** — chaque élément existe parce qu'il est nécessaire
2. **Le contraste est la règle** — noir/blanc, grand/petit, épais/fin
3. **Pas de confort** — l'utilisateur est là pour le contenu, pas pour le confort visuel
4. **Inspirations** — Josef Müller-Brockmann, Wim Crouwel, Massimo Vignelli, le design suisse des années 60

---

## 2. Palette

```css
:root {
  --bg: #ffffff;
  --text: #000000;
  --accent: #ff0000;
  --border: #000000;
}
```

### Variantes
```css
/* High contrast */
--bg: #000000;
--text: #ffffff;
--accent: #ccff00;

/* Warm */
--bg: #f5f0e8;
--text: #1a1a1a;
--accent: #d43b3b;

/* Digital */
--bg: #00ff00;
--text: #000000;
--accent: #0000ff;
```

---

## 3. Typographie

```css
:root {
  --font-heading: 'Helvetica Now Display', 'Helvetica Neue', Helvetica, sans-serif;
  --font-body: 'Helvetica Now Text', 'Helvetica Neue', Helvetica, sans-serif;
  --font-mono: 'IBM Plex Mono', 'JetBrains Mono', monospace;
}
```

### Échelle agressive
```css
h1 { font-size: clamp(4rem, 8vw, 10rem); font-weight: 900; letter-spacing: -0.04em; text-transform: uppercase; }
h2 { font-size: clamp(2rem, 4vw, 5rem); font-weight: 800; text-transform: uppercase; }
h3 { font-size: clamp(1.25rem, 2vw, 2.5rem); font-weight: 700; }
p  { font-size: clamp(1rem, 1.2vw, 1.25rem); max-width: 65ch; }
small { font-size: 0.75rem; text-transform: uppercase; letter-spacing: 0.1em; }
```

---

## 4. Layout

### Grille
```css
.page {
  max-width: 1200px;
  margin-inline: auto;
  padding: var(--space-lg);
}

.grid {
  display: grid;
  grid-template-columns: repeat(12, 1fr);
  gap: 0;
  border-top: 2px solid var(--border);
  border-left: 2px solid var(--border);
}

.grid > * {
  border-right: 2px solid var(--border);
  border-bottom: 2px solid var(--border);
  padding: var(--space-lg);
}
```

---

## 5. Composants Brutaux

### Hero
```html
<section class="border-b-2 border-black py-4xl" style="background: var(--bg); color: var(--text)">
  <h1 class="text-[clamp(4rem,10vw,12rem)] font-black uppercase leading-[0.85] -tracking-[0.04em]">
    Titre<br />Brutal
  </h1>
  <p class="mt-lg max-w-[65ch] text-lg">
    Le design n'est pas un confort. C'est une déclaration.
  </p>
  <button class="mt-xl px-xl py-md bg-black text-white text-sm uppercase tracking-[0.15em] font-bold
                 hover:bg-white hover:text-black border-2 border-black transition-colors">
    Agir
  </button>
</section>
```

### Carte
```html
<article class="border-2 border-black p-lg">
  <div class="text-xs uppercase tracking-[0.15em] mb-sm font-bold">Catégorie</div>
  <h2 class="text-2xl font-black uppercase leading-tight">Titre</h2>
  <div class="w-12 h-1 bg-black my-md"></div>
  <p class="text-sm">Description fonctionnelle, sans ornement.</p>
</article>
```

### Navigation
```html
<nav class="flex items-center justify-between border-b-2 border-black py-md px-lg">
  <div class="text-xl font-black uppercase">LOGO</div>
  <div class="flex gap-xl uppercase text-sm font-bold tracking-[0.1em]">
    <a href="#" class="hover:underline decoration-2 underline-offset-4">Lien</a>
    <a href="#" class="hover:underline decoration-2 underline-offset-4">Lien</a>
    <a href="#" class="hover:underline decoration-2 underline-offset-4">Lien</a>
  </div>
</nav>
```

---

## 6. Règles Brutalistes

### Interdictions
- ❌ Coins arrondis (toujours 0)
- ❌ Ombres portées
- ❌ Dégradés
- ❌ Icônes non-fonctionnelles
- ❌ Navigation sticky (sauf si utile)
- ❌ Plus de 3 couleurs
- ❌ Bordures subtiles (< 2px)
- ❌ `box-shadow`, `drop-shadow`
- ❌ Transitions douces (préférer instantané)
- ❌ Layouts asymétriques sans grille claire
- ❌ Animations décoratives
- ❌ `backdrop-filter`, `blur`

### Obligations
- ✅ Bordures épaisses (2px minimum)
- ✅ Contrastes maximaux
- ✅ Typographie large et grasse
- ✅ Grille visible
- ✅ Monochrome + un accent
- ✅ Espacement généreux
- ✅ Uppercase pour les grandes tailles

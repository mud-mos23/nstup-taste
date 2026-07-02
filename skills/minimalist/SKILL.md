---
name: minimalist-ui
description: UI éditoriale sobre (vibes Notion/Linear). Palette monochrome, structure nette, typographie contrastée, bento grids, aucune décoration superflue.
---

# Minimaliste — L'Éditorial Digital

Pas de décorum. Pas d'effet de style. Juste du contenu, bien rangé.

---

## 1. Philosophie

1. **Le contenu est roi** — l'UI disparaît pour laisser parler le contenu
2. **Fonction > forme** — si ça n'a pas d'utilité, ça n'existe pas
3. **Un pixel de trop** — si tu peux enlever un élément sans casser l'expérience, enlève-le
4. **Inspirations** — Notion, Linear, Bear, iA Writer, Readwise

---

## 2. Palette

```css
:root {
  --bg: #f8f7f4;
  --bg-secondary: #f0efe8;
  --text: #2d2d2d;
  --text-secondary: #8a8a8a;
  --accent: #3b6ea5;
  --border: #e5e3de;
  --selection: rgba(59, 110, 165, 0.15);
}
```

### Mode sombre
```css
[data-theme='dark'] {
  --bg: #1a1a1a;
  --bg-secondary: #222;
  --text: #e8e8e8;
  --text-secondary: #777;
  --accent: #5b9fd4;
  --border: #2a2a2a;
  --selection: rgba(91, 159, 212, 0.25);
}
```

---

## 3. Typographie

```css
:root {
  --font-heading: 'Inter', -apple-system, sans-serif;
  --font-body: 'Inter', -apple-system, sans-serif;
  --font-mono: 'JetBrains Mono', 'SF Mono', monospace;
}
```

Pour le minimaliste, Inter est autorisé car c'est un standard éditorial. Mais préférer :

| Titres | Corps |
|--------|-------|
| Satoshi | Outfit |
| Cabinet Grotesk | Sora |
| DM Sans | Figtree |

---

## 4. Layout

### Structure de page
```css
.page {
  max-width: 720px;
  margin-inline: auto;
  padding: var(--space-2xl) var(--space-lg);
}
```

### Grille de contenu
```css
.content-grid {
  display: grid;
  grid-template-columns: 1fr min(65ch, 100%) 1fr;
}

.content-grid > * {
  grid-column: 2;
}

.content-grid > .full {
  grid-column: 1 / -1;
  padding-inline: 0;
}
```

---

## 5. Composants Minimalistes

### Carte
```jsx
<article className="border-b border-border py-xl group">
  <div className="text-xs text-secondary tracking-wide uppercase mb-sm">{category}</div>
  <h2 className="text-xl font-medium leading-snug group-hover:text-accent transition-colors">
    {title}
  </h2>
  <p className="text-sm text-secondary mt-md leading-relaxed">{excerpt}</p>
  <div className="flex items-center gap-sm mt-md text-xs text-secondary">
    <time>{date}</time>
    <span>·</span>
    <span>{readTime} min de lecture</span>
  </div>
</article>
```

### Bouton
```jsx
<button className="px-md py-sm text-sm font-medium bg-text text-bg
                    hover:opacity-90 transition-opacity rounded-none">
  {label}
</button>
```

### Navigation
```jsx
<nav className="flex items-center gap-lg text-sm">
  {links.map(l => (
    <a key={l.href} href={l.href}
       className="text-secondary hover:text-text transition-colors">
      {l.label}
    </a>
  ))}
</nav>
```

---

## 6. Règles Strictes

- ❌ Ombres portées
- ❌ Coins arrondis (sauf 4px pour les inputs)
- ❌ Dégradés
- ❌ Icônes inutiles (seulement fonctionnelles)
- ❌ Images décoratives sans contexte
- ❌ Plus de 2 niveaux de fond
- ❌ Bordures épaisses
- ❌ Animations décoratives
- ❌ Layout à plus de 2 colonnes
- ❌ Tout ce qui ressemble à un template SaaS

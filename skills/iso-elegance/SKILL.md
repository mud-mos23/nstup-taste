---
name: iso-elegance
description: Design épuré à la française. Raffinement, équilibre, luxe discret. Architecture minimaliste mais expressive. Palette monochrome, typographie soignée, espace blanc généreux.
---

# Iso — L'Élégance Française

Le design n'est pas ce que tu ajoutes, c'est ce que tu enlèves. Iso est l'art de la réduction élégante.

---

## 1. Principes Fondamentaux

### La Règle des 3
Chaque écran ne doit communiquer que **3 choses maximum**. Pas une de plus.

### Le Vide est une Forme
L'espace blanc n'est pas un vide — c'est un élément de design actif. Il a du poids, du volume, de la texture.

### La Typographie est la Voix
Une seule famille typographique, déclinée avec maîtrise sur 3-4 poids. Pas de mélange de polices.

### La Couleur est un Accent
90% monochrome, 10% couleur d'accent. L'accent est utilisé avec une extrême parcimonie — un bouton, un lien, un détail.

### La Grille est un Rythme
Tout espacement doit appartenir à une séquence harmonique : 4, 8, 12, 16, 24, 32, 48, 64, 96, 128, 192.

---

## 2. Palette Iso

```css
:root {
  --iso-bg: #f8f7f4;           /* Blanc cassé chaud */
  --iso-bg-alt: #efede8;       /* Fond alternatif */
  --iso-text: #2d2d2d;         /* Texte presque noir */
  --iso-text-secondary: #8a8a8a; /* Texte secondaire */
  --iso-accent: #8b7355;       /* Ocre/brun — une seule couleur */
  --iso-accent-subtle: rgba(139, 115, 85, 0.08);
  --iso-border: #e5e3de;       /* Bordures subtiles */
  --iso-white: #ffffff;
}
```

### Variantes par secteur

| Secteur | Fond | Texte | Accent |
|---------|------|-------|--------|
| Mode | #f5f3f0 | #1a1a1a | #c4a882 |
| Tech | #fafafa | #171a1f | #3b6ea5 |
| Art | #efede8 | #2d2d2d | #c73e3e |
| Luxe | #0a0a0b | #e8e6e3 | #c9a84c |
| Éditorial | #f8f7f4 | #1a1a1a | #8b7355 |

---

## 3. Typographie Iso

- **Titres** : Satoshi (sans-serif géométrique) ou DM Serif Display (serif)
- **Corps** : Outfit ou Sora (lisibles, neutres, élégants)
- **Échelle** : 4 paliers max (small, body, large, heading)
- **Interlignage** : 1.6 pour le corps, 1.1 pour les titres
- **Mesure** : `max-width: 65ch` pour le texte

```css
h1 { font-size: var(--text-4xl); font-weight: 500; letter-spacing: -0.02em; }
h2 { font-size: var(--text-2xl); font-weight: 500; letter-spacing: -0.01em; }
h3 { font-size: var(--text-xl); font-weight: 500; }
p  { font-size: var(--text-base); line-height: 1.6; }
small { font-size: var(--text-sm); color: var(--iso-text-secondary); }
```

---

## 4. Layout Iso

### Grille
```css
.iso-grid {
  display: grid;
  grid-template-columns: 1fr min(65ch, 80%) 1fr;
  gap: var(--space-lg);
}

.iso-grid > * {
  grid-column: 2;
}

.iso-grid > .full {
  grid-column: 1 / -1;
}
```

### Marges
- **Desktop** : 12% de chaque côté
- **Tablet** : 8% de chaque côté
- **Mobile** : 5% de chaque côté

### Espacement vertical
```css
.iso-section {
  padding-block: var(--space-3xl);
}
.iso-section-sm {
  padding-block: var(--space-2xl);
}
.iso-gap {
  gap: var(--space-lg);
}
```

### Composition asymétrique
- Ratio 2:1 pour les sections texte + média
- Jamais de split 50/50
- Jamais de 3 colonnes égales

---

## 5. Composants Iso

### Button
```jsx
<button className="inline-flex items-center gap-sm px-lg py-sm border border-current rounded-none
                    text-sm tracking-widest uppercase transition-all duration-300
                    hover:bg-iso-text hover:text-iso-bg">
  {label}
</button>
```

### Card
```jsx
<article className="border-b border-iso-border pb-lg group">
  <div className="aspect-[4/3] bg-iso-bg-alt mb-md overflow-hidden">
    <Image src={img} className="object-cover w-full h-full group-hover:scale-[1.02] transition-transform duration-700" />
  </div>
  <h3 className="text-lg font-medium">{title}</h3>
  <p className="text-sm text-iso-text-secondary mt-sm">{desc}</p>
</article>
```

### Navigation
```jsx
<nav className="flex items-center justify-between py-lg border-b border-iso-border">
  <Logo className="text-lg font-medium" />
  <div className="flex items-center gap-lg text-sm tracking-wide">
    {links.map(l => (
      <a key={l.href} href={l.href}
         className="hover:text-iso-accent transition-colors">
        {l.label}
      </a>
    ))}
  </div>
</nav>
```

---

## 6. Ce que Iso Interdit

- ❌ Plus de 3 couleurs
- ❌ Ombres portées (`box-shadow`, `drop-shadow`)
- ❌ Coins arrondis (sauf `rounded-sm` sur les inputs)
- ❌ Dégradés
- ❌ Bordures épaisses (> 1px)
- ❌ Plus d'une police de titres ou une police de corps
- ❌ Icônes colorées (toutes en `currentColor`)
- ❌ Images avec bordures ou ombres
- ❌ Layout à plus de 2 colonnes sur desktop
- ❌ Animation qui attire l'attention

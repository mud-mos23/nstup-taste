---
name: high-end-visual-design
description: UI premium calme et luxueuse. Contraste doux, typographie raffinée, motion ressort, double-bezel, fluid island, magnetic buttons.
---

# Soft — Le Luxe Silencieux

Le vrai luxe est invisible. Soft crée des interfaces qui respirent la qualité sans avoir à le dire.

---

## 1. Philosophie

1. **Le silence est d'or** — l'interface s'efface, l'expérience reste
2. **La qualité se sent** — chaque pixel est intentionnel, chaque micro-interaction est pensée
3. **Pas de démonstration** — le design ne cherche pas à impressionner, il cherche à servir
4. **Inspirations** — Hermès, Aesop, Apple, Starck, les grands hôtels

---

## 2. Architecture Soft

### Double-Bezel
```css
.viewport {
  border: 1px solid rgba(255, 255, 255, 0.08);
  border-radius: 12px;
  overflow: hidden;
  box-shadow:
    0 0 0 1px rgba(0, 0, 0, 0.04),
    0 0 40px rgba(0, 0, 0, 0.02);
}
```

### Fluid Island — navigation flottante
```jsx
<nav className="fixed left-1/2 -translate-x-1/2 top-4 z-50
                backdrop-blur-xl bg-white/70 dark:bg-black/70
                border border-white/20 rounded-full
                px-xl py-sm shadow-soft">
  {links}
</nav>
```

### Magnetic Buttons
```jsx
<button className="relative overflow-hidden rounded-full px-xl py-md
                   bg-text text-bg
                   transition-transform duration-400
                   hover:scale-105 active:scale-95">
  <span className="relative z-10">{label}</span>
  <motion.div
    className="absolute inset-0 bg-accent/10"
    initial={false}
    whileHover={{ scale: 1.5 }}
    transition={{ type: 'spring', stiffness: 200, damping: 15 }}
  />
</button>
```

---

## 3. Palette

```css
:root {
  --bg: #f8f6f2;
  --bg-secondary: #f0ece6;
  --text: #1c1a18;
  --text-secondary: #8a8580;
  --accent: #8b7355;
  --accent-hover: #7a6348;
  --border: #e0dad2;
  --shadow: rgba(0, 0, 0, 0.04);
}
```

### Mode sombre
```css
[data-theme='dark'] {
  --bg: #121212;
  --bg-secondary: #1a1a1a;
  --text: #e8e3dc;
  --text-secondary: #8a8580;
  --accent: #c9a84c;
  --accent-hover: #d4b85a;
  --border: #2a2826;
  --shadow: rgba(0, 0, 0, 0.3);
}
```

---

## 4. Typographie

```css
:root {
  --font-heading: 'DM Serif Display', Georgia, serif;
  --font-body: 'Outfit', -apple-system, sans-serif;
}
```

### Échelle
```css
h1 { font-size: var(--text-4xl); font-weight: 500; line-height: 1.05; }
h2 { font-size: var(--text-2xl); font-weight: 500; line-height: 1.1; }
h3 { font-size: var(--text-xl); font-weight: 400; line-height: 1.2; }
p  { font-size: var(--text-base); line-height: 1.7; color: var(--text-secondary); }
```

---

## 5. Layout

```css
.section {
  padding-block: var(--space-3xl);
  padding-inline: clamp(2rem, 8vw, 8rem);
}

.text-container {
  max-width: 55ch;
  margin-inline: auto;
}

.grid {
  display: grid;
  grid-template-columns: repeat(12, 1fr);
  gap: var(--space-lg);
}
```

---

## 6. Motion Soft

```css
:root {
  --spring-smooth: 0.4s cubic-bezier(0.25, 0.1, 0.25, 1);
  --spring-bounce: 0.5s cubic-bezier(0.34, 1.56, 0.64, 1);
  --spring-gentle: 0.6s cubic-bezier(0.22, 1, 0.36, 1);
}

.button {
  transition: transform var(--spring-bounce), background-color var(--spring-smooth);
}
```

---

## 7. Règles Soft

### Interdictions
- ❌ Contrastes forts (max 7:1, viser 5:1)
- ❌ Noir ou blanc purs
- ❌ Angles durs (toujours arrondir légèrement)
- ❌ Ombres fortes (seulement des ombres subtiles)
- ❌ Typo sans-serif pour tous les textes (alterner serif/sans-serif)
- ❌ Plus de 2 polices
- ❌ Boutons carrés (toujours pill ou arrondis)
- ❌ Bordures épaisses
- ❌ Mouvements brusques
- ❌ Layouts asymétriques agressifs

### Obligations
- ✅ Espace blanc généreux (50%+ de la surface)
- ✅ Micro-interactions sur tous les éléments cliquables
- ✅ Typographie mixte (serif + sans-serif)
- ✅ Palette chaude et accueillante
- ✅ Navigation flottante / transparente
- ✅ Ombres subtiles et flou contrôlé
- ✅ Coins arrondis sur les conteneurs

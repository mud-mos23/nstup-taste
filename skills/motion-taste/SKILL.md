---
name: motion-taste
description: Animation premium à la française. Gestes élégants, transitions raffinées, micro-interactions subtiles. Spring physics uniquement, GSAP ScrollTrigger, motion/react.
---

# Motion Taste — Le Geste Français

La motion n'est pas un effet spécial. C'est un langage qui guide, surprend, enchante.

---

## 1. Philosophie du Mouvement

### Principes Fondamentaux

1. **Subtilité** — Si l'utilisateur remarque l'animation, elle est trop forte
2. **Noblesse** — Spring physics uniquement. Rien d'artificiel ou mécanique
3. **Performance** — Tout doit tourner à 60fps. `will-change`, `transform`, `opacity` seulement
4. **Progressif** — L'expérience doit être complète sans animation (respecte `prefers-reduced-motion`)
5. **Utilité** — Chaque animation a un but : guider, informer, célébrer

### Les 3 Usages de la Motion

| Usage | Exemple | Durée |
|-------|---------|-------|
| **Fonctionnel** | Navigation, hover, focus | 200-300ms |
| **Information** | Notification, loader, transition | 300-500ms |
| **Narratif** | Scroll reveal, hero intro, timeline | 600-1000ms |

---

## 2. Spring Physics Configs

### Standard — la base
```jsx
transition: {
  type: 'spring',
  stiffness: 100,
  damping: 20,
  mass: 1,
}
```

### Élastique — boutons, cartes, clics
```jsx
transition: {
  type: 'spring',
  stiffness: 200,
  damping: 15,
  mass: 0.8,
}
```

### Flottant — modaux, menus, dropdowns
```jsx
transition: {
  type: 'spring',
  stiffness: 80,
  damping: 25,
  mass: 1.2,
}
```

### Rebond — notifications, badges
```jsx
transition: {
  type: 'spring',
  stiffness: 300,
  damping: 10,
  mass: 0.6,
}
```

### Élégant — hero, titres, entrées solennelles
```jsx
transition: {
  type: 'spring',
  stiffness: 60,
  damping: 28,
  mass: 1.5,
}
```

### CSS équivalent
```css
/* Spring physics en CSS */
.button {
  transition: transform 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);
}
```

---

## 3. Micro-Interactions Obligatoires

### Boutons
```css
button {
  transition:
    transform 0.3s cubic-bezier(0.34, 1.56, 0.64, 1),
    background-color 0.2s ease;

  &:hover {
    transform: scale(1.02);
  }
  &:active {
    transform: scale(0.98);
  }
}
```

### Liens
```css
a {
  background-image: linear-gradient(currentColor, currentColor);
  background-position: 0% 100%;
  background-repeat: no-repeat;
  background-size: 0% 1px;
  transition: background-size 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);

  &:hover {
    background-size: 100% 1px;
  }
}
```

### Images
```css
img {
  transition: transform 0.6s cubic-bezier(0.34, 1.56, 0.64, 1);

  .card:hover & {
    transform: scale(1.02);
  }
}
```

---

## 4. Scroll Animations (GSAP)

### Installation
```bash
npm install gsap @gsap/react
```

### Fade-in au scroll
```jsx
gsap.utils.toArray('.reveal').forEach(el => {
  gsap.from(el, {
    opacity: 0,
    y: 40,
    duration: 0.8,
    ease: 'power2.out',
    scrollTrigger: {
      trigger: el,
      start: 'top 85%',
      toggleActions: 'play none none reverse',
    }
  })
})
```

### Sticky panels
```jsx
gsap.utils.toArray('.panel').forEach((panel, i) => {
  ScrollTrigger.create({
    trigger: panel,
    start: 'top top',
    pin: true,
    pinSpacing: false,
    end: '+=100%',
  })
})
```

### Parallax doux
```jsx
gsap.to('.parallax-bg', {
  y: '30%',
  ease: 'none',
  scrollTrigger: {
    trigger: '.parallax-section',
    start: 'top bottom',
    end: 'bottom top',
    scrub: true,
  }
})
```

---

## 5. Motion avec React (motion/react)

### Entrée de page
```jsx
<motion.div
  initial={{ opacity: 0, y: 20 }}
  animate={{ opacity: 1, y: 0 }}
  transition={{ type: 'spring', stiffness: 80, damping: 20 }}
>
  <Content />
</motion.div>
```

### Stagger (enfants)
```jsx
<motion.div
  variants={{
    hidden: { opacity: 0 },
    show: {
      opacity: 1,
      transition: { staggerChildren: 0.1 }
    }
  }}
  initial="hidden"
  animate="show"
>
  {items.map(item => (
    <motion.div
      key={item.id}
      variants={{
        hidden: { opacity: 0, y: 20 },
        show: { opacity: 1, y: 0 }
      }}
    >
      <Item {...item} />
    </motion.div>
  ))}
</motion.div>
```

### Layout animations
```jsx
<motion.div layout transition={{ type: 'spring', stiffness: 100, damping: 20 }}>
  <AnimatedContent />
</motion.div>
```

---

## 6. Règles Strictes

### Interdictions
- ❌ `transition: all` (toujours spécifier les propriétés)
- ❌ `ease-in-out`, `ease-in`, `ease-out` (préférer cubic-bezier personnalisé)
- ❌ Animations > 1000ms (sauf scroll d'arrivée)
- ❌ Animation au scroll qui bloque la lecture du contenu
- ❌ `setInterval` / `requestAnimationFrame` pour des animations simples
- ❌ Hover scale > 1.05 (sauf cas très spécifiques)
- ❌ `@keyframes` bounce / pulse / shake
- ❌ Opacité en transition seule sans `transform`
- ❌ AOS.js, Wow.js, ou autres bibliothèques d'animation au scroll (utiliser GSAP)
- ❌ `framer-motion` (obsolète — utiliser `motion`)

### Obligations
- ✅ Toujours `prefers-reduced-motion: reduce` respecté
- ✅ Toujours `will-change: transform` sur les éléments animés
- ✅ `transform` et `opacity` seulement pour la performance
- ✅ Durées cohérentes dans tout le projet
- ✅ Accessibilité : `motion-safe` / `motion-reduce` media queries

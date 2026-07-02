---
name: motion-taste
description: Animation premium à la française. Gestes élégants, transitions raffinées, micro-interactions subtiles.
---

# Motion Taste — Le Geste Français

Des animations qui semblent naturelles, jamais criardes. La motion au service de l'expérience, pas du spectacle.

## Principes

1. **Subtilité** — L'utilisateur ne doit pas être conscient des animations
2. **Physique** — Spring physics uniquement (jamais de linear ou ease standard)
3. **Durée** — Entre 200ms et 600ms max. Rien de plus long sauf scroll d'arrivée
4. **Progressive Enhancement** — L'expérience doit rester bonne sans motion

## Spring Configs

```jsx
// Standard
{ stiffness: 100, damping: 20 }

// Élastique (boutons, cartes)
{ stiffness: 200, damping: 15 }

// Flottant (modals, menus)
{ stiffness: 80, damping: 25 }

// Rebond (notifications)
{ stiffness: 300, damping: 10 }
```

## Interdictions

- ❌ `transition: all` (toujours spécifier les propriétés)
- ❌ Animations au scroll qui bloquent le contenu
- ❌ Hover scale non-limité (`transform: scale(1.05)` max)
- ❌ keyframes complexes (préférer les propriétés CSS isolées)

## Micro-Interactions Obligatoires

- Tous les boutons : hover scale + fond qui s'éclaircit
- Tous les liens : underline animation (gauche → droite)
- Toutes les images : fade-in au scroll
- Toutes les cartes : légère élévation au hover
- Navigation : indicateur de page active animé

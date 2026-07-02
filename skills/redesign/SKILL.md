---
name: redesign-existing-projects
description: Audit complet de code existant + redesign. Détecte les patterns génériques, dégradés IA, 3-colonnes, Inter, puis applique les standards Nstup.
---

# Redesign — La Rénovation

Tu ne construis pas du neuf. Tu transformes l'existant. L'audit est aussi important que la correction.

---

## Phase 1 — Audit Complet

### Layout Audit
- [ ] Structure de grille utilisée ?
- [ ] Hero centré avec tagline + CTA + screenshot ?
- [ ] 3 colonnes égales de cards ?
- [ ] Layout "navbar + hero + features + testimonials + footer" ?
- [ ] `h-screen` ou `min-h-screen` ?
- [ ] Responsive design fonctionnel ?

### Typography Audit
- [ ] Police : Inter, Roboto, Open Sans, Montserrat ?
- [ ] Échelle typographique cohérente ?
- [ ] `font-size` en px au lieu de rem/clamp ?
- [ ] Hiérarchie claire entre H1, H2, H3 ?
- [ ] `max-width: 65ch` pour le texte ?

### Color Audit
- [ ] Dégradé violet/bleu (`#6366f1` → `#8b5cf6`) ?
- [ ] Noir pur `#000000` ?
- [ ] Blanc pur `#ffffff` ?
- [ ] Palette Tailwind par défaut ?
- [ ] Plus de 5 couleurs ?
- [ ] Mode sombre manquant ?

### Spacing Audit
- [ ] Espacement cohérent ou valeurs arbitraires ?
- [ ] `margin-top: -Xpx` pour compenser ?
- [ ] Gap de 1px, 2px, 3px ?
- [ ] Éléments collés sans espace ?
- [ ] `padding` sur les textes au lieu de `margin` ?

### Motion Audit
- [ ] `transition: all` ?
- [ ] `window.addEventListener('scroll')` ?
- [ ] `ease-in-out`, `ease-in`, `ease-out` par défaut ?
- [ ] `@keyframes` complexes ?
- [ ] AOS.js, Wow.js, ou libs obsolètes ?

### Content Audit
- [ ] "Lorem Ipsum", "John Doe", "Acme Corp" ?
- [ ] "Elevate", "Seamless", "Unleash", "Revolutionize" ?
- [ ] Emojis dans le code ?
- [ ] Noms de marque génériques ?

### Accessibility Audit
- [ ] Contrastes WCAG AA ?
- [ ] Focus states visibles ?
- [ ] HTML sémantique (`nav`, `main`, `article`, `section`) ?
- [ ] `alt` texts sur les images ?
- [ ] `prefers-reduced-motion` ?

---

## Phase 2 — Plan de Correction

Pour chaque problème identifié, une correction précise :

| Problème | Correction |
|----------|-----------|
| Inter/Roboto | → Satoshi, Outfit, Cabinet Grotesk |
| Dégradé violet/bleu | → Palette Nstup sophistiquée |
| 3 colonnes égales | → Grille asymétrique 2:1 ou alternée |
| `h-screen` | → `min-h-[100dvh]` |
| Noir `#000000` | → `#0a0a0b` ou `#121212` |
| `transition: all` | → Propriétés spécifiques |
| Lorem Ipsum | → Contenu réel ou suppression |
| Pas de mode sombre | → Variables CSS + media query |
| Espacement incohérent | → Tokens d'espacement system |
| Pas de responsive | → `clamp()` + grille fluide |

---

## Phase 3 — Exécution

### Règles d'exécution
1. **Ne jamais casser la fonctionnalité** — redesign visuel uniquement
2. **Conserver les data attributes et les handlers JS**
3. **Migration progressive** — une section à la fois
4. **Valider après chaque changement** — l'UI doit fonctionner à chaque étape
5. **Documenter les changements** — commentaire `// NSTUP: modifié` sur chaque fichier touché

### Ordre d'exécution
1. Variables CSS (couleurs, espacements, typo)
2. Layout global (grille, marges)
3. Typographie (fontes, échelle, hiérarchie)
4. Composants (cards, boutons, nav)
5. Mode sombre
6. Motion et micro-interactions

---

## Phase 4 — Post-Redesign Check

- [ ] Tous les composants rendent correctement
- [ ] Mode clair/sombre fonctionnel
- [ ] Responsive : mobile, tablet, desktop
- [ ] Contrastes AA validés
- [ ] Aucune fonctionnalité cassée
- [ ] Aucun placeholder restant
- [ ] Aucun dégradé IA résiduel

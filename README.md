# Nstup Taste

*Le goût français du design — Anti-Slop Framework pour Agents IA*

**Nstup Taste** donne du bon goût à tes interfaces générées par IA. Finis les templates SaaS génériques, les dégradés violet/bleu, et les layouts à 3 colonnes.

Inspiré par [taste-skill](https://github.com/leonxlnx/taste-skill) — revisité avec l'élégance française.

## Installation

```bash
npx skills add https://github.com/mud-mos23/nstup-taste
```

Installer un skill spécifique :

```bash
npx skills add https://github.com/mud-mos23/nstup-taste --skill "nstup-taste"
```

## Skills

### Skills d'implémentation (code)

| Skill | Install Name | Description |
|-------|-------------|-------------|
| **nstup-taste** | `nstup-taste` | Skill principal v2. Lit le brief, infère le langage design, règle 3 cadrans. Anti-slop français. |
| **nstup-taste-v1** | `nstup-taste-v1` | Version v1 préservée pour compatibilité. |
| **iso-elegance** | `iso-elegance` | Design épuré à la française. Raffinement, équilibre, luxe discret. |
| **color-taste** | `color-taste` | Palettes chromatiques sophistiquées. Harmonie, contrastes maîtrisés. |
| **espace-blanc** | `espace-blanc` | Architecture du vide. Rythme, respiration, composition aérée. |
| **motion-taste** | `motion-taste` | Animation premium. Gestes, transitions, micro-interactions. |
| **typo-taste** | `typo-taste` | Typographie française. Hiérarchie, grilles, ligatures. |
| **minimalist** | `minimalist-ui` | UI éditoriale (vibes Notion/Linear). Sobriété, structure nette. |
| **brutalist** | `industrial-brutalist-ui` | Style brutaliste suisse. Contrastes forts, grilles rigides. |
| **soft** | `high-end-visual-design` | UI premium calme. Contraste doux, typo luxueuse. |
| **redesign** | `redesign-existing-projects` | Audit + redesign de code existant. |
| **output** | `full-output-enforcement` | Anti-troncature. Code complet, pas de placeholders. |
| **stitch** | `stitch-design-taste` | Export DESIGN.md compatible Google Stitch. |

### Skills de génération d'images

| Skill | Install Name | Description |
|-------|-------------|-------------|
| **imagegen-web** | `imagegen-frontend-web` | Références design web (hero, landing, sections). |
| **imagegen-mobile** | `imagegen-frontend-mobile` | Maquettes mobile iOS/Android. |
| **brandkit** | `brandkit` | Planches d'identité visuelle (logo, palette, typo). |

## Configuration opencode

```bash
# Copier les agents Nstup dans ton projet
cp -r .opencode/ ~/ton-projet/.opencode/
```

Le projet inclut des agents opencode prêts à l'emploi :
- **nstup-designer** — Applique les règles de design français
- **nstup-redesigner** — Audit et redesign de code existant
- **nstup-strict** — Anti-placeholders, anti-troncature

## Validation

```bash
# Vérifier que tous les skills sont bien formés
bash scripts/validate-skills.sh
```

Un workflow GitHub Actions valide automatiquement les skills à chaque push.

## Les 3 Cadrans

| Cadran | Rôle | 1-3 | 4-7 | 8-10 |
|--------|------|-----|-----|------|
| **DESIGN_VARIANCE** | Expérimentation layout | Symétrique | Asymétrie mesurée | Audacieux |
| **MOUVEMENT_INTENSITY** | Profondeur d'animation | Static | Scroll animations | Cinématique |
| **VISUAL_DENSITY** | Info par viewport | Aéré | Équilibré | Dense |

## Règles Anti-Slop

- ❌ Inter, Arial, Helvetica
- ❌ Dégradé violet/bleu IA
- ❌ Noir pur `#000000`
- ❌ Layout 3 colonnes égales
- ❌ "Elevate", "Seamless", "Unleash"
- ❌ Emojis dans le code
- ❌ `h-screen` → utiliser `min-h-[100dvh]`

- « Guillemets français » obligatoires
- Espacement avec `clamp()`
- Spring physics pour la motion
- `max-width: 65ch` pour le texte

## Exemples

Des exemples concrets sont disponibles dans [`examples/`](examples/) :
- `hero-nstup.md` — Hero section avec motion
- `card-nstup.md` — Card éditoriale
- `navigation-nstup.md` — Navigation responsive

## Feedback & Contributions

- Issues / PRs sur GitHub
- [@mud_mos23](https://github.com/mud-mos23)

## Licence

MIT License — Copyright (c) 2026 mud-mos23

---
name: full-output-enforcement
description: Anti-troncature. Interdit les placeholders, TODO, commentaires vides, points de suspension. Exige du code complet et fonctionnel.
---

# Output — L'Intégrité du Code

L'IA a tendance à expédier du code à moitié fini. Output force la complétude à chaque fichier.

---

## Règles de Complétude

### Interdictions Strictes

```
// ...                   ← INTERDIT
/* ... */                ← INTERDIT
// TODO                  ← INTERDIT
// FIXME                 ← INTERDIT
// implement later       ← INTERDIT
// add more items here   ← INTERDIT
// continue...           ← INTERDIT
// etc.                  ← INTERDIT
// rest of the code      ← INTERDIT
// similar for other...  ← INTERDIT
// handle errors         ← INTERDIT (ou tu les handles maintenant)
```

### Ce qui est Obligatoire

- ✅ Chaque fichier est **complet et fonctionnel** du début à la fin
- ✅ Toutes les props sont définies et typées
- ✅ Tous les imports sont résolus (pas de `import X from '...'` vide)
- ✅ Tous les data-fetching ont leur loading/error/success states
- ✅ Tous les event handlers sont implémentés
- ✅ Toutes les routes sont connectées
- ✅ Tous les styles sont complets (pas de classes Tailwind manquantes)

---

## Protocole de Split de Fichier

Quand le fichier est trop long pour tenir dans le contexte :

```
// FILE_SPLIT: Button.tsx - part 1/2
```

```tsx
// Contenu du fichier...
```

Puis dans le message suivant :

```
// FILE_SPLIT: Button.tsx - part 2/2
```

```tsx
// Suite et fin du fichier...
```

### Règles du Split
- Le split ne coupe jamais au milieu d'une fonction, d'un composant, ou d'un bloc
- Chaque partie doit être syntaxiquement valide
- La partie 1 ne contient pas de code mort
- La partie 2 reprend exactement où la partie 1 s'est arrêtée
- Maximum 2 splits par fichier

---

## Anti-Placeholder Patterns

### ❌ À ne pas faire
```tsx
function Component() {
  // ... props handling
  // ... state management
  // ... render logic
  return <div>Component</div>
}
```

### ✅ À la place
```tsx
interface ComponentProps {
  title: string
  description?: string
  onAction: () => void
  variant?: 'primary' | 'secondary'
  loading?: boolean
  disabled?: boolean
  className?: string
}

function Component({
  title,
  description,
  onAction,
  variant = 'primary',
  loading = false,
  disabled = false,
  className = ''
}: ComponentProps) {
  const [isHovered, setIsHovered] = useState(false)

  const handleClick = useCallback(() => {
    if (loading || disabled) return
    onAction()
  }, [loading, disabled, onAction])

  const baseStyles = 'inline-flex items-center justify-center gap-2 px-4 py-2 rounded-lg font-medium transition-all duration-200'

  const variantStyles: Record<string, string> = {
    primary: 'bg-blue-600 text-white hover:bg-blue-700 active:bg-blue-800',
    secondary: 'bg-gray-100 text-gray-900 hover:bg-gray-200 active:bg-gray-300',
  }

  return (
    <button
      onClick={handleClick}
      disabled={disabled}
      className={cn(baseStyles, variantStyles[variant], className)}
      onMouseEnter={() => setIsHovered(true)}
      onMouseLeave={() => setIsHovered(false)}
      aria-busy={loading}
    >
      {loading ? <Spinner /> : null}
      {title}
      {description && <span className="sr-only">{description}</span>}
    </button>
  )
}
```

---

## Sanctions

Si le modèle produit ne serait-ce qu'un seul placeholder :
1. STOP — ne pas continuer la génération
2. RÉPÉTER la règle : "Code complet, pas de placeholders"
3. REGÉNÉRER le fichier en entier

---

## Format Garanti

Tout fichier produit doit :
- Être syntaxiquement valide (le linter ne doit pas crier)
- Avoir tous ses imports
- Avoir des props/documentation si c'est un composant réutilisable
- Avoir ses tests si demandé
- Avoir son style (CSS Modules, Tailwind, ou CSS-in-JS)
- Fonctionner sans modification supplémentaire

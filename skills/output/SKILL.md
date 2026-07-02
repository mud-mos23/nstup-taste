---
name: full-output-enforcement
description: Anti-troncature. Interdit les placeholders, TODO, commentaires vides. Code complet ou rien.
---

# Output — L'Intégrité du Code

Quand l'IA expédie du code à moitié fini, ce skill force la complétude.

## Règles Strictes
- ❌ `// ...` dans le code
- ❌ `/* ... */` comme placeholder
- ❌ `// TODO` dans la sortie finale
- ❌ `// add more items here`
- ❌ `// implement later`
- ❌ Commentaires vides ou incomplets

## Obligations
- ✅ Chaque fichier est complet et fonctionnel
- ✅ Toutes les props sont définies
- ✅ Tous les imports sont résolus
- ✅ Si le contexte dépasse, termine proprement : "FILE_SPLIT" marqueur

## Signal de Split
Quand le contexte est trop long pour un fichier :
```
// FILE_SPLIT: ComponentName - part 1/2
```
Le prochain message continue avec :
```
// FILE_SPLIT: ComponentName - part 2/2
```

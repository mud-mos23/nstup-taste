#!/usr/bin/env bash
set -euo pipefail

# Nstup Taste — Skill Validator
# Vérifie que tous les skills sont bien formés et cohérents.

errors=0
green='\033[0;32m'
red='\033[0;31m'
nc='\033[0m'

echo "🔍 Validating Nstup Taste skills..."
echo ""

# 1. Vérifier que chaque dossier skills/*/ contient un SKILL.md
for dir in skills/*/; do
  skill_name=$(basename "$dir")
  skill_file="${dir}SKILL.md"

  if [ ! -f "$skill_file" ]; then
    echo -e "${red}❌ ${skill_name}: missing SKILL.md${nc}"
    errors=$((errors+1))
    continue
  fi

  # 2. Vérifier le frontmatter YAML
  if ! head -1 "$skill_file" | grep -q '^---$'; then
    echo -e "${red}❌ ${skill_name}: missing opening --- (frontmatter)${nc}"
    errors=$((errors+1))
  fi

  if ! grep -q '^name: ' "$skill_file"; then
    echo -e "${red}❌ ${skill_name}: missing 'name:' field${nc}"
    errors=$((errors+1))
  fi

  if ! grep -q '^description: ' "$skill_file"; then
    echo -e "${red}❌ ${skill_name}: missing 'description:' field${nc}"
    errors=$((errors+1))
  fi

  # 3. Vérifier que la description ne dépasse pas 200 chars
  desc=$(grep '^description: ' "$skill_file" | sed 's/^description: //')
  if [ ${#desc} -gt 200 ]; then
    echo -e "${red}⚠️  ${skill_name}: description too long (${#desc} chars, max 200)${nc}"
  fi

  # 4. Vérifier que le fichier n'est pas vide
  lines=$(wc -l < "$skill_file")
  if [ "$lines" -lt 10 ]; then
    echo -e "${red}❌ ${skill_name}: too short (${lines} lines, min 10)${nc}"
    errors=$((errors+1))
  fi

  echo -e "${green}✅ ${skill_name} (${lines} lines)${nc}"
done

echo ""

# 5. Vérifier skill.sh registry
if [ -f skill.sh ]; then
  while IFS= read -r line; do
    if [[ "$line" =~ \[([^\]]+)\]=\"skills\/([^\"]+)\/SKILL\.md\" ]]; then
      name="${BASH_REMATCH[1]}"
      path="${BASH_REMATCH[2]}"
      if [ ! -f "skills/$path/SKILL.md" ]; then
        echo -e "${red}❌ skill.sh: '$name' -> skills/$path/SKILL.md not found${nc}"
        errors=$((errors+1))
      fi
    fi
  done < <(grep '\[.*\]="skills/' skill.sh)
fi

# 6. Vérifier que toutes les skills ont une entrée dans skill.sh
for dir in skills/*/; do
  skill_name=$(basename "$dir")
  skill_file="${dir}SKILL.md"
  if [ -f "$skill_file" ]; then
    install_name=$(grep '^name: ' "$skill_file" | sed 's/^name: //')
    if ! grep -q "\[$install_name\]=" skill.sh 2>/dev/null; then
      echo -e "${red}⚠️  ${skill_name}: install name '$install_name' not found in skill.sh${nc}"
    fi
  fi
done

echo ""
if [ "$errors" -eq 0 ]; then
  echo -e "${green}🎉 All skills validated successfully!${nc}"
else
  echo -e "${red}❌ ${errors} error(s) found.${nc}"
fi

exit "$errors"

#!/usr/bin/env bash

# Nstup Taste - Local Skill Registry
declare -A SKILLS=(
  [nstup-taste]="skills/nstup-taste/SKILL.md"
  [nstup-taste-v1]="skills/nstup-taste-v1/SKILL.md"
  [iso-elegance]="skills/iso-elegance/SKILL.md"
  [color-taste]="skills/color-taste/SKILL.md"
  [espace-blanc]="skills/espace-blanc/SKILL.md"
  [motion-taste]="skills/motion-taste/SKILL.md"
  [typo-taste]="skills/typo-taste/SKILL.md"
  [minimalist]="skills/minimalist/SKILL.md"
  [brutalist]="skills/brutalist/SKILL.md"
  [soft]="skills/soft/SKILL.md"
  [redesign]="skills/redesign/SKILL.md"
  [output]="skills/output/SKILL.md"
  [imagegen-web]="skills/imagegen-web/SKILL.md"
  [imagegen-mobile]="skills/imagegen-mobile/SKILL.md"
  [brandkit]="skills/brandkit/SKILL.md"
  [stitch]="skills/stitch/SKILL.md"
)

if [[ $# -eq 0 ]]; then
  echo "Usage: source ./skill.sh <skill-name>"
  echo "Available skills: ${!SKILLS[@]}"
else
  echo "${SKILLS[$1]}"
fi

#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<EOF
Usage: $0 username "Full Name" yoururl email [--no-page]

Creates:
  _assets/member_profile/username/
    - picture.png    # placeholder
    - profile.md     # with basic template
  members.md        # injects \insertprofile{...}
Optional:
  members/username/index.md
EOF
  exit 1
}

if [[ $# -lt 4 ]]; then
  usage
fi

USERNAME="$1"
FULLNAME="$2"
URL="$3"
EMAIL="$4"
NO_PAGE=false
if [[ "${5-}" == "--no-page" ]]; then
  NO_PAGE=true
  URL="$3"
else
  NO_PAGE=false
  URL="/members/${USERNAME}"
fi

# 1) Create asset folder & profile.md
ASSET_DIR="_assets/member_profile/${USERNAME}"
mkdir -p "$ASSET_DIR"

# Copy or touch picture.png
if [[ ! -f "$ASSET_DIR/picture.jpg" ]]; then
  cp _assets/member_profile/picture_placeholder.jpg "$ASSET_DIR/picture.jpg" 2>/dev/null || \
    touch "$ASSET_DIR/picture.jpg"
  echo "→ Created placeholder: $ASSET_DIR/picture.jpg"
fi

# Create profile.md from template
if [[ ! -f "$ASSET_DIR/profile.md" ]]; then
  cp _assets/member_profile/profile_placeholder.md "$ASSET_DIR/profile.md" 2>/dev/null || \
    touch "$ASSET_DIR/profile.md"
  echo "→ Created placeholder: $ASSET_DIR/profile.md"
fi

# 2) Inject into members.md
MARKER="<!-- insert new members here -->"
INSERT="\\\\insertprofile{${USERNAME}}{${FULLNAME}}{${URL}}{${EMAIL}}"
if ! grep -Fq "${INSERT}" members.md; then
  # Append just before the closing or at end
  sed -i.bak "/${MARKER}/i \\${INSERT}" members.md \
    && echo "→ Appended to members.md:" \
    && echo "   ${INSERT}"
  # Remove backup file
  rm -f members.md.bak
else
  echo "→ members.md already contains your profile line."
fi

# 3) Optional mini-site
if ! $NO_PAGE; then
  PAGE_DIR="members/${USERNAME}"
  mkdir -p "$PAGE_DIR"
  PAGE_FILE="${PAGE_DIR}/index.md"
  if [[ ! -f "$PAGE_FILE" ]]; then
    cat > "$PAGE_FILE" <<EOF
\insertprofilepage{${USERNAME}}{${FULLNAME}}{${EMAIL}}

# Publications

<!--
# you can choose one of the two methods from below.
\publist{https://arxiv.org/a/your_author_profile.html} # use your arXiv author profile
\publistarxivsearch{https://arxiv.org/a/your_searchresult.html} # use your arXiv author profile
-->
EOF
    echo "→ Created mini-site: $PAGE_FILE"
  else
    echo "→ ${PAGE_FILE} already exists; skipped."
  fi
else
  echo "→ Skipped mini-site creation."
fi

echo "✅  Done!"

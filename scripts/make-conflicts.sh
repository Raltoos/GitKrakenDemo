#!/usr/bin/env bash
set -euo pipefail
echo "Creating conflict scenario on feature/pricing vs develop..."

# ensure branches exist
git checkout develop

# create baseline file
mkdir -p src
cat > src/pricing.ts <<'EOF'
export function calcTotal(price: number, tax: number) {
  return Math.round((price + price * tax) * 100) / 100;
}
EOF
git add src/pricing.ts
git commit -m "feat: add pricing calculator"

# branch off and change function
git checkout -b feature/pricing
cat > src/pricing.ts <<'EOF'
export function calcTotal(price: number, tax: number, discount=0) {
  const subtotal = price - discount;
  return Math.round((subtotal + subtotal * tax) * 100) / 100;
}
EOF
git commit -am "feat(pricing): support discount param"

# meanwhile, diverge develop with a different implementation
git checkout develop
cat > src/pricing.ts <<'EOF'
export function calcTotal(price: number, tax: number) {
  const total = price * (1 + tax);
  return Math.round(total * 100) / 100;
}
EOF
git commit -am "perf(pricing): simpler calculation"

echo "Now try merging feature/pricing into develop to trigger conflicts."

export function calcTotal(price: number, tax: number) {
  // intentionally naive initial implementation for demo
  return Math.round((price + price * tax) * 100) / 100;
}
// bugfix: rounding error note

export function calcTotal(price: number, tax: number) {
  return Math.round((price + price * tax) * 100) / 100;
}

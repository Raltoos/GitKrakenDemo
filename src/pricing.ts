export function calcTotal(price: number, tax: number) {
  const total = price * (1 + tax);
  return Math.round(total * 100) / 100;
}

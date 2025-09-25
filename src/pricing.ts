export function calcTotal(price: number, tax: number, discount=0) {
  const subtotal = price - discount;
  return Math.round((subtotal + subtotal * tax) * 100) / 100;
}

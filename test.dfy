function Max(a: int, b: int): int {
  if a > b then a else b
}

method MaxSum(x: int, y: int) returns (s: int, m: int)
  ensures s == x + y && m == Max(x, y)
{
  s := x + y;
  m := Max(x, y);
}

method Caller() {
  var x := 1928;
  var y := 1;

  var sum, maximum := MaxSum(x, y);

  assert sum == x + y;
  assert maximum == Max(x, y);
}


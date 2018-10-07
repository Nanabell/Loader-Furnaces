function math.gcd(m, n)
  while n ~= 0 do
    local q = m
    m = n
    n = q % n
  end
  return m
end

function math.lcm(m, n)
  return (m ~= 0 and n ~= 0) and m * n / math.gcd(m, n) or 0
end

function math.maxOf(m, n)
  if m > n then return m end
  return n
end
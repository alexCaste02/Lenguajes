let $todos := (
  for $precios in (//coche/precio) return $precios
)

return <caro>{max($todos)}</caro>
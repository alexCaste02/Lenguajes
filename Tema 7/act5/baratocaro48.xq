for $coche in doc("rental.xml")//coche

return 

  if($coche/precio < 48)
  then (<barato>{concat($coche/marca," ",$coche/marca/@modelo)}(</barato>)
  else (<caro>{concat($coche/marca," ",$coche/marca/@modelo)}</caro>)


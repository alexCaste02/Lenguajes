for $coche in doc("rental.xml")//coche

return 
<vehiculo>
{concat($coche/marca," ",$coche/marca/@modelo)}
{
  if($coche/precio < 48)
  then (<barato/>)
  else (<caro/>)
}
</vehiculo>
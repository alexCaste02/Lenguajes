let $completo := (

for $coche in doc("rental.xml")//coche
return
  if($coche/color/text()="azul")
  then (<azul>{$coche/matricula}</azul>)
  else if($coche/color/text()="verde")
  then (<verde>{$coche/matricula}</verde>)

)

return 
<matriculas>
{$completo}
</matriculas>
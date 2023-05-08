<intervalosnubosos>
{
for $dia in doc("prevision_vielha.xml")//dia


  for $franja in ($dia/estado_cielo)
  where $franja/@descripcion = "Intervalos nubosos"  

return <fecha franja="{$franja/@periodo}">{string($dia/@fecha)}</fecha>
}
</intervalosnubosos>
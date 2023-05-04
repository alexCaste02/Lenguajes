<intervalosnubosos>
{
for $dia in doc("prevision_vielha.xml")//dia
where $dia/estado_cielo/@descripcion = "Intervalos nubosos"

  for $franja in ($dia/estado_cielo/@periodo)

return <fecha franja="{$franja}">{string($dia/@fecha)}</fecha>
}
</intervalosnubosos>
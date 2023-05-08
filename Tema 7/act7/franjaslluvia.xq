<franjaslluvia>
{
  for $dia in  doc("prevision_vielha.xml")//dia
  for $prob in ($dia/prob_precipitacion)
  where ($prob = "5" or $prob = "10")
  
  return 
    <fecha franja="{$prob/@periodo}">{ $dia/@fecha }</fecha>
}
</franjaslluvia>
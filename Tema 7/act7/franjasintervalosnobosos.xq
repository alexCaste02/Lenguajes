for $dia in doc("prevision_vielha.xml")//dia
where $dia/estado_cielo/@descripcion = "Intervalos nubosos"

  for $fecha in ($dia/@fecha)

return $dia/@fecha
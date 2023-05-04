for $dia in doc("prevision_vielha.xml")//dia

where $dia/temperatura/maxima > 25


return $dia/@fecha
for $p in doc("datosue.xml")//estado
where ($p/pib*1000000 div $p/poblacion) >48000

group by $g := ($p/entrada)

return $p
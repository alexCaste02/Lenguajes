for $p in doc("datosue.xml")//estado
where $p/superficie>100000 and $p/idh<0.93
order by $p/idh descending

return concat($p/@nombre,", ",$p/idh)
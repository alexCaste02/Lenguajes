for $p in doc("datosue.xml")//estado
where $p/idh>0.92
order by ($p/poblacion div $p/superficie) descending

return concat($p/@nombre,", ",$p/idh)
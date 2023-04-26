for $m in doc("rental.xml")//coche/marca

return <fabricante>{$m/text()}</fabricante>
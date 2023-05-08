for $e in doc("datosue.xml")//estado
where $e/idh>0.9

group by $g := ($e/entrada)
order by $g

return 
 <incorporacion fecha="{$g}">
    {
      for $p in doc("datosue.xml")//estado
      where ($p/entrada=$g) and ($p/idh>0.9)
      
      let $pibc := ((($p/pib)*1000000) div ($p/poblacion))
      let $n := $p/@nombre
      order by $pibc descending
      
      return <pais pibcapita="{$pibc}">{$n}</pais>
    }
</incorporacion>


let $a:=doc("rental.xml")//coche[distintivoambiental="azul"]/matricula
let $v:=doc("rental.xml")//coche[distintivoambiental="verde"]/matricula

return
<matriculas>
 <azul>{$a}</azul>
 <verde>{$v}</verde>
</matriculas>
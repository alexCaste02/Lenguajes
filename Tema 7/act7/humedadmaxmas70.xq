<humedadmas70>
{
for $dia in doc("prevision_vielha.xml")//dia
where $dia/humedad_relativa/maxima > 70

return <fecha>{string($dia/@fecha)}</fecha>
}
</humedadmas70>
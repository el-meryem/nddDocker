Class msg.checkVoitureDispoRpse Extends msg.basic.reponse
{

Property voiture As data.Voiture;


Storage Default
{
<Data name="checkVoitureDispoRpseDefaultData">
<Subscript>"checkVoitureReservationRpse"</Subscript>
<Value name="1">
<Value>voiture</Value>
</Value>
</Data>
<DefaultData>checkVoitureDispoRpseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
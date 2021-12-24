
Class data.Reservation Extends (%Persistent, %JSON.Adaptor)
{

Property voiture As data.Voiture;

Property dateDebutReserve As %TimeStamp;

Property dateFinReserve  As %TimeStamp;


Storage Default
{
<Data name="ReservationDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>voiture</Value>
</Value>
<Value name="3">
<Value>dateDebutReserve</Value>
</Value>
<Value name="4">
<Value>dateFinReserve</Value>
</Value>
</Data>
<DataLocation>^data.ReservationD</DataLocation>
<DefaultData>ReservationDefaultData</DefaultData>
<IdLocation>^data.VoitureD</IdLocation>
<IndexLocation>^data.ReservationI</IndexLocation>
<StreamLocation>^data.ReservationS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

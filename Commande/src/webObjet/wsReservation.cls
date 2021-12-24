Class webObjet.wsReservation Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor)
{


Property categorie As %String;

Property dateDebutReserve As %TimeStamp;

Property dateFinReserve  As %TimeStamp;

Storage Default
{
<Data name="wsReservationState">
<Value name="1">
<Value>categorie</Value>
</Value>
<Value name="2">
<Value>dateDebutReserve</Value>
</Value>
<Value name="3">
<Value>dateFinReserve</Value>
</Value>
</Data>
<State>wsReservationState</State>
<StreamLocation>^webObjet.wsReservationS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}

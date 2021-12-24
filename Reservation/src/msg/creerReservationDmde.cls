Class msg.creerReservationDmde Extends (Ens.Request, %JSON.Adaptor)
{

Property voiture As data.Voiture;

Property dateDebutReserve As %TimeStamp;

Property dateFinReserve  As %TimeStamp;



Storage Default
{
    <Data name="creerReservationDmdeDefaultData">
<Subscript>"creerReservationDmde"</Subscript>
<Value name="1">
<Value>voiture</Value>
</Value>
<Value name="2">
<Value>dateDebutReserve</Value>
</Value>
<Value name="3">
<Value>dateFinReserve</Value>
</Value>
</Data>
<DefaultData>creerReservationDmdeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
    }
    
    }
Class msg.ReserverCategorieVoitureDmde Extends (Ens.Request, %JSON.Adaptor)
{

Property categorie As %String;

Property dateDebutReserve As %TimeStamp;

Property dateFinReserve  As %TimeStamp;

Storage Default
{  
<Data name="ReserverCategorieDmdeDefaultData">
<Subscript>"ReserverCategorieVoitureDmde"</Subscript>
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
<DefaultData>ReserverCategorieDmdeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}
}


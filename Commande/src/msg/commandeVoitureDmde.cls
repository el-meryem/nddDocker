Class msg.commandeVoitureDmde Extends (Ens.Request, %JSON.Adaptor)
{

Property marque As %String;

Property couleur As %String;

Property modele As %String;

Storage Default
{
<Data name="commandeVoitureDmdeDefaultData">
<Subscript>"commandeVoitureDmde"</Subscript>
<Value name="1">
<Value>marque</Value>
</Value>
<Value name="2">
<Value>couleur</Value>
</Value>
<Value name="3">
<Value>modele</Value>
</Value>
</Data>
<DefaultData>commandeVoitureDmdeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}

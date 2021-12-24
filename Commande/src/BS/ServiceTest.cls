/// Description
Class BS.ServiceTest Extends Ens.BusinessService
{

Property Adapter As Ens.InboundAdapter;

Parameter ADAPTER = "Ens.InboundAdapter";

Method OnProcessInput(pInput As %RegisteredObject, pOutput As %RegisteredObject) As %Status
{
    
    Return $$$ERROR($$$NotImplemented)
}

}

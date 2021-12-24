Class BO.Voiture Extends Ens.BusinessOperation
{

Property Adapter As Ens.OutboundAdapter;

Parameter ADAPTER = "Ens.OutboundAdapter";

Parameter INVOCATION = "Queue";

Method checkVoitureDispo(pRequest As msg.checkVoitureDispoDmde, Output pResponse As msg.checkVoitureDispoRpse) As %Status
{
    set pResponse = ##class(msg.checkVoitureDispoRpse).%New()

 set sql = "select plaque from data.Voiture where categorie ='"_pRequest.categorie_"' and plaque not in ("
    set sql = sql_" SELECT voiture->plaque FROM data.Reservation where voiture->categorie = '"_pRequest.categorie_"'"
    set sql = sql_" and ((dateDebutReserve >='"_pRequest.dateDebutReserve_"' and dateDebutReserve <= '"_pRequest.dateFinReserve_"' ) "
    set sql = sql_" or (dateFinReserve >= '"_pRequest.dateDebutReserve_"' and dateFinReserve <= '"_pRequest.dateFinReserve_"' ) "
    set sql = sql_" or (dateDebutReserve <= '"_pRequest.dateDebutReserve_"' and dateFinReserve >= '"_pRequest.dateFinReserve_"' ) "
    set sql = sql_" or (dateDebutReserve >= '"_pRequest.dateDebutReserve_"' and dateFinReserve <='"_pRequest.dateFinReserve_"' )) "
    set sql = sql_" ) "

    set statement=##class(%SQL.Statement).%New() 
	do statement.%Prepare(sql)

	set SQLrequest = statement.%Execute()
    do SQLrequest.%Next()

    set plaque = SQLrequest.%Get("plaque")
    $$$TRACE(plaque)

    set tsc = ##class(data.Voiture).plaqueIsExists(plaque , .idVoiture)
    if (tsc) {
        
        $$$TRACE(idVoiture)

        set dataVoiture = ##class(data.Voiture).%OpenId( idVoiture ) 
        set pResponse.voiture= dataVoiture
        $$$TRACE(dataVoiture.plaque)
        set pResponse.codeRetour = "OK"
        Quit $$$OK
    }
    else {
        set pResponse.codeRetour = "KO"
        set pResponse.libErreur = "OOps !! aucune voiture n'existe avec cette categorie."
        Quit $$$OK
    }
    
   
}

Method creerReservation(pRequest As msg.creerReservationDmde, Output pResponse As msg.creerReservationRpse) As %Status
{
    
    set pResponse = ##class(msg.checkVoitureDispoRpse).%New()
    set reservation = ##class(data.Reservation).%New()
         set reservation.voiture = pRequest.voiture
         set reservation.dateDebutReserve = pRequest.dateDebutReserve
         set reservation.dateFinReserve = pRequest.dateFinReserve
         set tsc = reservation.%Save()
         set pResponse.codeRetour = "OK"
    
        $$$TRACE(tsc)
        Quit $$$OK

}


XData MessageMap
{
<MapItems>
    <MapItem MessageType="msg.checkVoitureDispoDmde">
        <Method>checkVoitureDispo</Method>
    </MapItem>
     <MapItem MessageType="msg.creerReservationDmde">
        <Method>creerReservation</Method>
    </MapItem>
</MapItems>
}
}

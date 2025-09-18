Instance: sescam-encounter
InstanceOf: SESCAMEncounter
Title: "Encounter SESCAM — ejemplo"
Description: "Episodio de episodio finalizado de hospitalización"

* status = #completed
* subject = Reference(sescam-patient-juan-lopez-garcia)

* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"  
* type[0] = $SESCAMEncounterTypeCS#HOS "HOSPITALIZACIÓN"

* identifier[0].system = "https://sescam.jccm.es/fhir/sid/encounter-id"
* identifier[0].value = "ENC-2025-000123"

* actualPeriod.start = "2025-09-10"
* actualPeriod.end = "2025-09-15"
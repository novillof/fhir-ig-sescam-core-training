Instance: sescam-encounter
InstanceOf: SESCAMEncounter
Title: "Encounter SESCAM — ejemplo"
Description: "Cita ambulatoria de Juan López García"

* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"  
* subject = Reference(sescam-patient-juan-lopez-garcia)

* identifier[0].system = "http://sanidad.castillalamancha.es/fhir/sid/encounter-id"
* identifier[0].value = "ENC-2025-000123"

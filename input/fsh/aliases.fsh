// Code systems
Alias:  $ICD10CM = http://hl7.org/fhir/sid/icd-10-cm
Alias:  $IdType = http://terminology.hl7.org/CodeSystem/v2-0203
Alias:  $ObsStatus = http://hl7.org/fhir/observation-status
Alias:  $LOINC = http://loinc.org

// EU Core
// Alias:   $EUCorePatient = http://hl7.eu/fhir/base/StructureDefinition/patient-eu-core //R4
// Alias:   $EUCorePractitioner = http://hl7.eu/fhir/base/StructureDefinition/practitioner-eu-core //R4
Alias:  $EUCorePatient = http://hl7.eu/fhir/base-r5/StructureDefinition/patient-eu-core //R5
Alias:  $EUCorePractitioner = http://hl7.eu/fhir/base-r5/StructureDefinition/practitioner-eu-core //R5
// El HumanName-eu está definido en la guía EU de Laboratorios en R4, pero aún no está en en el 
// paquete R5 “hl7.fhir.eu.base-r5” publicado (0.1.0-ballot), por lo que clonaremos el tipo de dato hasta que esté disponible.
//Alias:  $EUHumanName = http://hl7.eu/fhir/base-r5/StructureDefinition/HumanName-eu
// TODO: Cambiar la url http://sanidad.castillalamancha.es... por el dominio definitivo de esta IG.
Alias:  $SESCAMHumanName = https://sescam.jccm.es/fhir/ig/StructureDefinition/humanname-eu-sescam



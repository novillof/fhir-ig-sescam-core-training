// Code systems
Alias:  $ICD10CM = http://hl7.org/fhir/sid/icd-10-cm
Alias:  $IdType = http://terminology.hl7.org/CodeSystem/v2-0203
Alias:  $ObsStatus = http://hl7.org/fhir/observation-status
Alias:  $LOINC = http://loinc.org
Alias:  $SCT = http://snomed.info/sct

// EU Core
// Alias:   $EUCorePatient = http://hl7.eu/fhir/base/StructureDefinition/patient-eu-core //R4
// Alias:   $EUCorePractitioner = http://hl7.eu/fhir/base/StructureDefinition/practitioner-eu-core //R4
Alias:  $EUCorePatient = http://hl7.eu/fhir/base-r5/StructureDefinition/patient-eu-core //R5
Alias:  $EUCorePractitioner = http://hl7.eu/fhir/base-r5/StructureDefinition/practitioner-eu-core //R5
Alias:  $EUCorePractitionerRole = http://hl7.eu/fhir/base-r5/StructureDefinition/practitionerRole-eu-core //R5
// El HumanName-eu está definido en la guía EU de Laboratorios en R4, pero aún no está en en el 
// paquete R5 “hl7.fhir.eu.base-r5” publicado (0.1.0-ballot), por lo que clonaremos el tipo de dato hasta que esté disponible.
//Alias:  $EUHumanName = http://hl7.eu/fhir/base-r5/StructureDefinition/HumanName-eu
Alias:  $SESCAMHumanName = https://sescam.jccm.es/fhir/ig/core/StructureDefinition/humanname-eu-sescam

// SESCAM
Alias:  $SESCAM = https://sescam.jccm.es/fhir/ig/core
Alias:  $SESCAMEncounterTypeCS = https://sescam.jccm.es/fhir/ig/core/CodeSystem/cs-sescam-encounter-type
Alias:  $SESCAMEncounterTypeVS = https://sescam.jccm.es/fhir/ig/core/ValueSet/vs-sescam-encounter-type

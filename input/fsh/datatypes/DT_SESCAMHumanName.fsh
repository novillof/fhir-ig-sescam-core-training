// Data Type Profile: HumanName (SESCAM, alineado con EU)
// Canonical resultará: {canonical-IG}/StructureDefinition-humanname-eu-sescam

Profile: SESCAMHumanName
Parent: HumanName
Id: humanname-eu-sescam
Title: "HumanName (SESCAM, EU-aligned)"
Description: "Perfil de HumanName alineado con HL7 Europe HumanName-eu (múltiples apellidos), portado a R5."

// Binding de uso del nombre (R5)
//* use from http://hl7.org/fhir/ValueSet/name-use (required)

// Permite múltiples apellidos a través de extensiones estándar de FHIR
* family 0..1
* family.extension contains
    http://hl7.org/fhir/StructureDefinition/humanname-fathers-family named fathersFamily 0..* and 
    http://hl7.org/fhir/StructureDefinition/humanname-mothers-family named mothersFamily 0..*

// Notas de uso
* family ^short = "Apellido completo (p. ej., 'López García')"
* family.extension[fathersFamily] ^short = "Apellido procedente del padre"
* family.extension[mothersFamily] ^short = "Apellido procedente de la madre"
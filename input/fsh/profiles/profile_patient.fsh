Profile: SESCAMPatient
Parent: $EUCorePatient
Title: "Patient (SESCAM)"
Description: "Perfil del Paciente SESCAM, derivado del perfil EU Core Patient"
// -- Cambiamos el tipo de 'name' para que use el perfil de HumanName (EU)
* name only $SESCAMHumanName
//* generalPractitioner only Reference(SESCAMPractitioner)

* identifier 1..* MS
// Identificadores del paciente. Slicing solo por type
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "type"
* identifier ^slicing.rules = #open

* identifier contains
    nif 0..1 MS and
//    passport 0..1 MS and
    nass 0..1 MS and
    cipSns 0..1 MS and
    nhc 0..* MS 

* identifier[nif].type ^patternCodeableConcept = $IdType#NNESP
//* identifier[passport].type ^patternCodeableConcept = $IdType#PPN
* identifier[nass].type ^patternCodeableConcept = $IdType#SS
* identifier[cipSns].type ^patternCodeableConcept = $IdType#HC
* identifier[nhc].type ^patternCodeableConcept = $IdType#MR  //TODO: verificar si el NHC es de ámbito global para toda CLM o hay NHCs por cada hospital

* identifier[cipSns].use MS //Con el use distinguimos un cip válido de uno antiguo
//* identifier[cipSns].use ^short = "usual (cipSns en vigor) | official | temp | secondary | old (cipSns deprecado)"

// (Opcional) textos cortos de ayuda
* identifier[nif] ^short = "NIF/NIE (identificador fiscal en España)"
//* identifier[passport] ^short = "Número de pasaporte"
* identifier[nass] ^short = "Número de afiliación a la Seguridad Social"
* identifier[cipSns] ^short = "Código de identificación personal único del SNS"
* identifier[nhc] ^short = "Número de historia clínica"

* deceased[x] 1..1
* deceased[x] only boolean

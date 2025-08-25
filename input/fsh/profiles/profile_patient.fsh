Profile: SESCAMPatient
Parent: $EUCorePatient
Title: "Patient (SESCAM)"
Description: "Perfil del Paciente SESCAM, derivado del perfil EU Core Patient"
// -- Cambiamos el tipo de 'name' para que use el perfil de HumanName (EU)
* name only $SESCAMHumanName
//* generalPractitioner only Reference(SESCAMPractitioner)

// Identificadores del paciente. Slicing solo por type
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "type"
* identifier ^slicing.rules = #open

* identifier contains
    nif 0..1 MS and
//    passport 0..1 MS and
    nass 0..1 MS and
    cipSns 0..* MS and
    nhc 0..* MS 

* identifier[nif].type = $IdType#NNESP
//* identifier[passport].type = $IdType#PPN
* identifier[nass].type = $IdType#SS
* identifier[cipSns].type = $IdType#HC
* identifier[nhc].type = $IdType#MR  //TODO: verificar si el NHC es de ámbito global para toda CLM o hay NHCs por cada hospital

// (Opcional) textos cortos de ayuda
* identifier[nif] ^short = "NIF/NIE (identificador fiscal en España)"
//* identifier[passport] ^short = "Número de pasaporte"
* identifier[nass] ^short = "Número de afiliación a la Seguridad Social"
* identifier[cipSns] ^short = "Código de identificación personal único del SNS"
* identifier[nhc] ^short = "Número de historia clínica"

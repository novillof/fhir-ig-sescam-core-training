Instance: sescam-patient-juan-lopez-garcia
InstanceOf: SESCAMPatient
Title: "Patient SESCAM – ejemplo con HumanName (SESCAM/EU)"
Description: "Paciente SESCAM con doble apellido y extensiones de apellidos paterno/materno."

* active = true

// CIP-SNS actual
* identifier[cipSns][0].use = #usual
* identifier[cipSns][0].value = "PNRV901264600010"

// CIP-SNS anterior
* identifier[cipSns][1].use = #old
* identifier[cipSns][1].value = "PNRV901264600001"
* identifier[cipSns][1].period.end = "2020-03-24"

// Sexo y fecha de nacimiento
* gender = #male
* birthDate = "1965-01-22"

// Nombre oficial con doble apellido
* name[0].use = #official
* name[0].text = "Juan López García"
* name[0].family = "López García"
* name[0].given[0] = "Juan"

// Extensiones específicas del data type profile SESCAMHumanName
* name[0].family.extension[http://hl7.org/fhir/StructureDefinition/humanname-fathers-family].valueString = "López"
* name[0].family.extension[http://hl7.org/fhir/StructureDefinition/humanname-mothers-family].valueString = "García"

// Dirección de residencia
* address[0].use = #home
* address[=].line = "Calle Crespas, 17"
* address[=].city = "Consuegra"
* address[=].state = "Toledo"
* address[=].postalCode = "45700"
* address[=].country = "ES"

* telecom[0].system = #phone
* telecom[=].value = "600600601"
* telecom[=].use = #mobile
* telecom[+].system = #phone
* telecom[=].value = "925474747"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "example@email.com"
* telecom[=].use = #home

* contact.organization = Reference(sescam-organization)
* contained = sescam-organization


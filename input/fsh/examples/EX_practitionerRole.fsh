Instance: sescam-practitionerRole-example
InstanceOf: SESCAMPractitionerRole
Title: "PractitionerRole SESCAM - Ejemplo"
Description: "Ejemplo de rol del Profesional de Salud SESCAM."
Usage: #example
* active = true
* practitioner = Reference(sescam-practitioner-sandro-balboa)
* organization = Reference(sescam-organization)
* contained = sescam-organization
* code = $SCT#394814009 "General practice (specialty)"
* specialty = $SCT#408443003 "General medical practice"
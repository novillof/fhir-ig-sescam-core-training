// Los dos siguientes perfiles y la extensión, están puestos solo a modo de ejemplo. No formarán parte de la IG definitiva del SESCAM.

Profile: SESCAMBodyMassIndex
Parent: Observation
Title: "Observation: Índice de masa corporal (IMC) (SESCAM)"
Description: "Índice de masa corporal, o IMC, es una medida del tamaño corporal. Combina el peso de una persona con su altura."
* performer 1..1 MS

// BMI is a point in time measurement so exclude measurement by time period.
* effective[x] only dateTime
//* code = http://loinc.org#39156-5 "Body mass index (BMI)"

Profile: SESCAMCondition
Parent: Condition
Title: "Condition: Apnea obstructiva del sueño (SESCAM)"
Description: "La apnea obstructiva del sueño (OSA) es una condición en la que el respirar se interrumpe involuntariamente por breves periodos de tiempo durante el sueño. [Fuente: Healthline](https://www.healthline.com/health/sleep/obstructive-sleep-apnea)"
* code from ObstructiveSleepApneaVS (required)
//* asserter only Reference(SESCAMPractitioner)
* onset[x] MS
* onset[x] ^short = "Fecha del inicio de la condición (no de cuándo se diagnóstico)"
* extension contains AgeAtOSADiagnosis named ageAtOsaDx 0..1 MS

Extension: AgeAtOSADiagnosis
Id: age-at-osa-diagnosis
Title: "Extension: Edad en el momento del diagnóstico"
Description: "La fecha (y hora) en la que se realizó el diagnóstico de la OSA. Tenga en cuenta que esto podría calcularse a partir de la fecha y hora del diagnóstico y la fecha de nacimiento."
* value[x] only Age
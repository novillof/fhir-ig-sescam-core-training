Instance: sescam-bmi-example
InstanceOf: SESCAMBodyMassIndex
Title: "Observation Índice de masa corporal (IMC) (SESCAM) Ejemplo"
Description: "Ejemplo de IMC SESCAM."
* code = $LOINC#39156-5 "Body mass index (BMI) [Ratio]"
* subject = Reference(sescam-patient-juan-lopez-garcia)
* status = $ObsStatus#final
* effectiveDateTime = "2021-09-28"
* performer = Reference(sescam-practitioner-sandro-balboa)
* valueQuantity = 32.5 'kg/m2' "kg/m2"
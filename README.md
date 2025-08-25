# SESCAM FHIR Implementation Guide (IG)

Este repositorio contiene la guía de implementación en FHIR del SESCAM.
Se ha utilizado la versión R5 de FHIR y algunos de los perfiles usados derivan del los perfiles europeos.

## ¿Cómo usarlo?

Si quieres realizar cambios en esta FHIR IG se recomienda tener conocimientos del estándar y de perfiles.

### 🖥️ Local Environment Setup

Para crear y visualizar esta FHIR IG en local, sigue los siguientes pasos:

1. **Instala [Visual Studio Code](https://code.visualstudio.com/)** y el [FHIR Shorthand (FSH) language extension](https://marketplace.visualstudio.com/items?itemName=KurtKanaskie.vscode-language-fsh).

2. **Instala [Java runtime](https://adoptium.net/temurin/releases/)** (Java 17 recomendado).

3. **Instala [Ruby](https://www.ruby-lang.org/en/documentation/installation/)** y [Jekyll](https://jekyllrb.com/docs/installation/) (sigue las instrucciones específicas de tu sistema operativo).

4. **Instala [SUSHI](https://fshschool.org/docs/sushi/installation/)** (el compilador de FHIR Shorthand).

5. Clona el repo:

   ```bash
   git clone git@gitlab.com:orionhealth/solutions/emea/spain/fhir/fsh_ig_sescam.git 
   ```

6. Abre un terminal dentro de la carpeta de la IG y ejecuta el script de actualización del publisher:

   * En macOS/Linux: `./_updatePublisher.sh`
   * En Windows: `_updatePublisher.bat`

   Esto descarga el último [`publisher.jar`](https://github.com/HL7/fhir-ig-publisher/releases) en la carpeta `input-cache/`.

7. Ejecuta el script de generación de la IG:

   * En macOS/Linux: `./_genonce.sh`
   * En Windows: `_genonce.bat`

8. Abre `output/index.html` en tu navegador. Deberías ver una página de la IG titulada **"SESCAM Core FHIR IG"**.


## CI/CD Pipeline (GitLab)

This project uses a GitLab CI pipeline to:

Build the FHIR Implementation Guide (IG) using SUSHI and the official HL7 IG Publisher.

Automatically publish the generated IG as a static website using GitLab Pages whenever a push is made to the main branch.

See https://gitlab.com/orionhealth/solutions/emea/spain/fhir/fsh_ig_sample/-/ci/editor (.gitlab-ci.yml) for configuration.

Go to deploy > pages https://gitlab.com/orionhealth/solutions/emea/spain/fhir/fsh_ig_sample/pages#overview to see where the current IG is deployed online. Example: https://fsh-ig-sample-cf6321.gitlab.io/ 

## License

Copyright 2025+ Orion Health

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
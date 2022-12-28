plugins {
    kotlin("jvm") version "1.8.0"
    application
}

group = "com.amazonaws.amplify"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    implementation("software.amazon.smithy:smithy-model:1.26.3")
    implementation("software.amazon.smithy:smithy-aws-apigateway-traits:1.26.3")
    implementation("software.amazon.smithy:smithy-aws-cloudformation-traits:1.26.3")
    implementation("software.amazon.smithy:smithy-aws-iam-traits:1.26.3")
    implementation("software.amazon.smithy:smithy-aws-traits:1.26.3")
    implementation("software.amazon.smithy:smithy-mqtt-traits:1.26.3")
    implementation("software.amazon.smithy:smithy-protocol-test-traits:1.26.3")
    implementation("software.amazon.smithy:smithy-validation-model:1.26.3")
    implementation("software.amazon.smithy:smithy-jsonschema:1.26.3")
}

kotlin {
   jvmToolchain(8)
}

application {
    mainClass.set("ModelConverter")
}

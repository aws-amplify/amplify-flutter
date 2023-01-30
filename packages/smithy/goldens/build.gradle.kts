plugins {
    kotlin("jvm") version "1.8.0"
    application
}

group = "com.amazonaws.amplify"
version = "1.0-SNAPSHOT"

val libraryVersion = project.file("smithy-version").readText().trim()

repositories {
    mavenCentral()
}

dependencies {
    implementation("software.amazon.smithy:smithy-model:$libraryVersion")
    implementation("software.amazon.smithy:smithy-aws-apigateway-traits:$libraryVersion")
    implementation("software.amazon.smithy:smithy-aws-cloudformation-traits:$libraryVersion")
    implementation("software.amazon.smithy:smithy-aws-iam-traits:$libraryVersion")
    implementation("software.amazon.smithy:smithy-aws-traits:$libraryVersion")
    implementation("software.amazon.smithy:smithy-mqtt-traits:$libraryVersion")
    implementation("software.amazon.smithy:smithy-protocol-test-traits:$libraryVersion")
    implementation("software.amazon.smithy:smithy-validation-model:$libraryVersion")
    implementation("software.amazon.smithy:smithy-jsonschema:$libraryVersion")
}

kotlin {
   jvmToolchain(8)
}

application {
    mainClass.set("ModelConverterKt")
}

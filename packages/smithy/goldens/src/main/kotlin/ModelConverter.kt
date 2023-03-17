import software.amazon.smithy.model.Model
import software.amazon.smithy.model.node.Node
import software.amazon.smithy.model.shapes.ModelSerializer
import software.amazon.smithy.model.transform.ModelTransformer
import java.io.File
import java.io.IOException

fun main(args: Array<String>) {
    val modelsPath = args[0]
    val outputPath = args[1]
    val protocols = args[2].split(",")
    val version = SmithyVersion.valueOf(args[3])
    for (protocol in protocols) {
        val converter = ModelConverter(modelsPath, version, protocol)
        write(outputPath, converter.toJson())
    }
}

fun write(path: String, contents: String) {
    val file = File(path)
    if (file.exists() && file.delete()) {
        val created = file.createNewFile()
        if (!created) {
            throw IOException("Could not create file: $path")
        }
    }
    file.writeText(contents)
}

enum class SmithyVersion {
    V1, V2
}

class ModelConverter(private val modelsPath: String, private val version: SmithyVersion, private val protocol: String) {
    fun toJson(): String {
        var model = Model.assembler()
            .discoverModels(ModelConverter::class.java.classLoader)
            .addImport("$modelsPath/shared")
            .addImport("$modelsPath/$protocol")
            .assemble()
            .unwrap()

        val transformer = ModelTransformer.create()
        transformer.apply {
            model = changeStringEnumsToEnumShapes(model)
            model = flattenAndRemoveMixins(model)
            model.serviceShapes.forEach { serviceShape ->
                model = copyServiceErrorsToOperations(model, serviceShape)
            }
            when (version) {
                SmithyVersion.V1 -> model = downgradeToV1(model)
                SmithyVersion.V2 -> {}
            }
        }

        val serializer = ModelSerializer.builder()
            .includePrelude(false)
            .build()

        return Node.prettyPrintJson(serializer.serialize(model))
    }
}


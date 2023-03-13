import software.amazon.smithy.model.Model
import software.amazon.smithy.model.node.Node
import software.amazon.smithy.model.shapes.ModelSerializer
import java.io.File
import java.io.IOException

fun main(args: Array<String>) {
    val modelPath = args[0]
    val protocols = args[1].split(",")
    for (protocol in protocols) {
        val converter = ModelConverter(modelPath, protocol)
        val outputPath = "$modelPath/$protocol.json"
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

class ModelConverter(private val modelPath: String, private val protocol: String) {
    fun toJson(): String {
        val model = Model.assembler()
            .discoverModels(ModelConverter::class.java.classLoader)
            .addImport("$modelPath/shared")
            .addImport("$modelPath/$protocol")
            .assemble()
            .unwrap()

        val serializer = ModelSerializer.builder()
            .includePrelude(false)
            .build()

        return Node.prettyPrintJson(serializer.serialize(model))
    }
}


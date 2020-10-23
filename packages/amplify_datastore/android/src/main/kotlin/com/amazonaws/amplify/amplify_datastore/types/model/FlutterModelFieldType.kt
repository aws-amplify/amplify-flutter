package com.amazonaws.amplify.amplify_datastore.types.model

import com.amplifyframework.core.model.temporal.Temporal

enum class ModelFieldTypeEnum {
    string,
    int,
    double,
    date,
    dateTime,
    time,
    timestamp,
    bool,

    // below uses modelName
    enumeration,
    //embedded, - ignore non model types for now
    //embeddedCollection,
    model,
    collection;

    fun isArray() : Boolean {
        return this == collection
    }
    fun isEnum() : Boolean {
        return this == enumeration
    }
    fun isModel() : Boolean {
        return this == model
    }

    companion object {
        private val VALUES = values();
        fun getByIndex(value: Int) = VALUES.first { it -> it.ordinal == value }
    }

}

data class FlutterModelFieldType(val map: Map<String, Any>) {

    // Type of the field is the data type of the instance variables
    // of the Model class.
    private val fieldType: ModelFieldTypeEnum = ModelFieldTypeEnum.getByIndex(map["fieldType"] as Int)

    // Name of the field is the name of the instance variable
    // of the Model class.
    private val ofModelName: String? = map["ofModelName"] as String?

    fun getFieldType() : ModelFieldTypeEnum {
        return fieldType;
    }

    // Android specific support
    fun getTargetType() : String {
        if(ofModelName != null) return ofModelName;
        else return getJavaClass().simpleName;
    }

    private fun getModelName() : String? {
        return ofModelName;
    }

    // TODO Expand this for enums/models(associations) ??
    fun getJavaClass(): Class<*> {
        when (fieldType) {
            ModelFieldTypeEnum.string -> return String::class.java
            ModelFieldTypeEnum.int -> return Int::class.java
            ModelFieldTypeEnum.double -> return Double::class.java
            ModelFieldTypeEnum.date -> return Temporal.Date::class.java
            ModelFieldTypeEnum.dateTime -> return Temporal.DateTime::class.java
            ModelFieldTypeEnum.time -> return Temporal.Time::class.java
            ModelFieldTypeEnum.timestamp -> return Temporal.Timestamp::class.java
            ModelFieldTypeEnum.bool -> return Boolean::class.java
        }
        return Object::class.java
    }
}
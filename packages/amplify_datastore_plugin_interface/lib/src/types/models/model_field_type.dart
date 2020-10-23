class ModelFieldType {
  final ModelFieldTypeEnum fieldType;

  // Jithin Roy is working to allow String Name's instead of the actual Type to be passed into the native APIs
  // this field is meant to add extra info if fieldType is enumeration, embedded, etc.
  final String ofModelName; //opt

  const ModelFieldType(this.fieldType, {this.ofModelName = ""});

  static ModelFieldType from(Type type) {
    // ETC TODO
  }

  Map<String, dynamic> toMap() {
    return {
      'fieldType': fieldType.index,
      'ofModelName': ofModelName,
    };
  }
}

enum ModelFieldTypeEnum {
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
  collection
}

extension ModelFieldTypeMethods on ModelFieldTypeEnum {
  bool isArray() {
    switch (this) {
      case ModelFieldTypeEnum.collection:
        return true;
      //case ModelFieldTypeEnum.embeddedCollection:
      //  return true;
      default:
        return false;
    }
  }
}

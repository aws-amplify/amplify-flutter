/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, override_on_non_overriding_member, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:collection/collection.dart';


/** This is an auto generated class representing the CustomMarker type in your schema. */
class CustomMarker extends amplify_core.Model {
  static const classType = const _CustomMarkerModelType();
  final String id;
  final double? _latitude;
  final double? _longitude;
  final User? _hostUser;
  final Purpose? _purpose;
  final String? _title;
  final String? _comment;
  final amplify_core.TemporalDateTime? _gatheringTime;
  final int? _maxParticipants;
  final int? _minAge;
  final int? _maxAge;
  final Gender? _allowGender;
  final int? _numParticipants;
  final List<Message>? _messages;
  final List<UserCustomMarkerParticipants>? _participants;
  final String? _circleImageURL;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  CustomMarkerModelIdentifier get modelIdentifier {
      return CustomMarkerModelIdentifier(
        id: id
      );
  }
  
  double get latitude {
    try {
      return _latitude!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get longitude {
    try {
      return _longitude!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  User get hostUser {
    try {
      return _hostUser!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Purpose get purpose {
    try {
      return _purpose!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get title {
    try {
      return _title!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get comment {
    return _comment;
  }
  
  amplify_core.TemporalDateTime get gatheringTime {
    try {
      return _gatheringTime!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get maxParticipants {
    try {
      return _maxParticipants!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get minAge {
    try {
      return _minAge!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get maxAge {
    try {
      return _maxAge!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Gender? get allowGender {
    return _allowGender;
  }
  
  int get numParticipants {
    try {
      return _numParticipants!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<Message>? get messages {
    return _messages;
  }
  
  List<UserCustomMarkerParticipants>? get participants {
    return _participants;
  }
  
  String? get circleImageURL {
    return _circleImageURL;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const CustomMarker._internal({required this.id, required latitude, required longitude, required hostUser, required purpose, required title, comment, required gatheringTime, required maxParticipants, required minAge, required maxAge, allowGender, required numParticipants, messages, participants, circleImageURL, createdAt, updatedAt}): _latitude = latitude, _longitude = longitude, _hostUser = hostUser, _purpose = purpose, _title = title, _comment = comment, _gatheringTime = gatheringTime, _maxParticipants = maxParticipants, _minAge = minAge, _maxAge = maxAge, _allowGender = allowGender, _numParticipants = numParticipants, _messages = messages, _participants = participants, _circleImageURL = circleImageURL, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory CustomMarker({String? id, required double latitude, required double longitude, required User hostUser, required Purpose purpose, required String title, String? comment, required amplify_core.TemporalDateTime gatheringTime, required int maxParticipants, required int minAge, required int maxAge, Gender? allowGender, required int numParticipants, List<Message>? messages, List<UserCustomMarkerParticipants>? participants, String? circleImageURL}) {
    return CustomMarker._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      latitude: latitude,
      longitude: longitude,
      hostUser: hostUser,
      purpose: purpose,
      title: title,
      comment: comment,
      gatheringTime: gatheringTime,
      maxParticipants: maxParticipants,
      minAge: minAge,
      maxAge: maxAge,
      allowGender: allowGender,
      numParticipants: numParticipants,
      messages: messages != null ? List<Message>.unmodifiable(messages) : messages,
      participants: participants != null ? List<UserCustomMarkerParticipants>.unmodifiable(participants) : participants,
      circleImageURL: circleImageURL);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomMarker &&
      id == other.id &&
      _latitude == other._latitude &&
      _longitude == other._longitude &&
      _hostUser == other._hostUser &&
      _purpose == other._purpose &&
      _title == other._title &&
      _comment == other._comment &&
      _gatheringTime == other._gatheringTime &&
      _maxParticipants == other._maxParticipants &&
      _minAge == other._minAge &&
      _maxAge == other._maxAge &&
      _allowGender == other._allowGender &&
      _numParticipants == other._numParticipants &&
      DeepCollectionEquality().equals(_messages, other._messages) &&
      DeepCollectionEquality().equals(_participants, other._participants) &&
      _circleImageURL == other._circleImageURL;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("CustomMarker {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("latitude=" + (_latitude != null ? _latitude!.toString() : "null") + ", ");
    buffer.write("longitude=" + (_longitude != null ? _longitude!.toString() : "null") + ", ");
    buffer.write("hostUser=" + (_hostUser != null ? _hostUser!.toString() : "null") + ", ");
    buffer.write("purpose=" + (_purpose != null ? amplify_core.enumToString(_purpose)! : "null") + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("comment=" + "$_comment" + ", ");
    buffer.write("gatheringTime=" + (_gatheringTime != null ? _gatheringTime!.format() : "null") + ", ");
    buffer.write("maxParticipants=" + (_maxParticipants != null ? _maxParticipants!.toString() : "null") + ", ");
    buffer.write("minAge=" + (_minAge != null ? _minAge!.toString() : "null") + ", ");
    buffer.write("maxAge=" + (_maxAge != null ? _maxAge!.toString() : "null") + ", ");
    buffer.write("allowGender=" + (_allowGender != null ? amplify_core.enumToString(_allowGender)! : "null") + ", ");
    buffer.write("numParticipants=" + (_numParticipants != null ? _numParticipants!.toString() : "null") + ", ");
    buffer.write("circleImageURL=" + "$_circleImageURL" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  CustomMarker copyWith({double? latitude, double? longitude, User? hostUser, Purpose? purpose, String? title, String? comment, amplify_core.TemporalDateTime? gatheringTime, int? maxParticipants, int? minAge, int? maxAge, Gender? allowGender, int? numParticipants, List<Message>? messages, List<UserCustomMarkerParticipants>? participants, String? circleImageURL}) {
    return CustomMarker._internal(
      id: id,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      hostUser: hostUser ?? this.hostUser,
      purpose: purpose ?? this.purpose,
      title: title ?? this.title,
      comment: comment ?? this.comment,
      gatheringTime: gatheringTime ?? this.gatheringTime,
      maxParticipants: maxParticipants ?? this.maxParticipants,
      minAge: minAge ?? this.minAge,
      maxAge: maxAge ?? this.maxAge,
      allowGender: allowGender ?? this.allowGender,
      numParticipants: numParticipants ?? this.numParticipants,
      messages: messages ?? this.messages,
      participants: participants ?? this.participants,
      circleImageURL: circleImageURL ?? this.circleImageURL);
  }
  
  CustomMarker copyWithModelFieldValues({
    ModelFieldValue<double>? latitude,
    ModelFieldValue<double>? longitude,
    ModelFieldValue<User>? hostUser,
    ModelFieldValue<Purpose>? purpose,
    ModelFieldValue<String>? title,
    ModelFieldValue<String?>? comment,
    ModelFieldValue<amplify_core.TemporalDateTime>? gatheringTime,
    ModelFieldValue<int>? maxParticipants,
    ModelFieldValue<int>? minAge,
    ModelFieldValue<int>? maxAge,
    ModelFieldValue<Gender?>? allowGender,
    ModelFieldValue<int>? numParticipants,
    ModelFieldValue<List<Message>?>? messages,
    ModelFieldValue<List<UserCustomMarkerParticipants>?>? participants,
    ModelFieldValue<String?>? circleImageURL
  }) {
    return CustomMarker._internal(
      id: id,
      latitude: latitude == null ? this.latitude : latitude.value,
      longitude: longitude == null ? this.longitude : longitude.value,
      hostUser: hostUser == null ? this.hostUser : hostUser.value,
      purpose: purpose == null ? this.purpose : purpose.value,
      title: title == null ? this.title : title.value,
      comment: comment == null ? this.comment : comment.value,
      gatheringTime: gatheringTime == null ? this.gatheringTime : gatheringTime.value,
      maxParticipants: maxParticipants == null ? this.maxParticipants : maxParticipants.value,
      minAge: minAge == null ? this.minAge : minAge.value,
      maxAge: maxAge == null ? this.maxAge : maxAge.value,
      allowGender: allowGender == null ? this.allowGender : allowGender.value,
      numParticipants: numParticipants == null ? this.numParticipants : numParticipants.value,
      messages: messages == null ? this.messages : messages.value,
      participants: participants == null ? this.participants : participants.value,
      circleImageURL: circleImageURL == null ? this.circleImageURL : circleImageURL.value
    );
  }
  
  CustomMarker.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _latitude = (json['latitude'] as num?)?.toDouble(),
      _longitude = (json['longitude'] as num?)?.toDouble(),
      _hostUser = json['hostUser'] != null
        ? json['hostUser']['serializedData'] != null
          ? User.fromJson(new Map<String, dynamic>.from(json['hostUser']['serializedData']))
          : User.fromJson(new Map<String, dynamic>.from(json['hostUser']))
        : null,
      _purpose = amplify_core.enumFromString<Purpose>(json['purpose'], Purpose.values),
      _title = json['title'],
      _comment = json['comment'],
      _gatheringTime = json['gatheringTime'] != null ? amplify_core.TemporalDateTime.fromString(json['gatheringTime']) : null,
      _maxParticipants = (json['maxParticipants'] as num?)?.toInt(),
      _minAge = (json['minAge'] as num?)?.toInt(),
      _maxAge = (json['maxAge'] as num?)?.toInt(),
      _allowGender = amplify_core.enumFromString<Gender>(json['allowGender'], Gender.values),
      _numParticipants = (json['numParticipants'] as num?)?.toInt(),
      _messages = json['messages']  is Map
        ? (json['messages']['items'] is List
          ? (json['messages']['items'] as List)
              .where((e) => e != null)
              .map((e) => Message.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['messages'] is List
          ? (json['messages'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => Message.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _participants = json['participants']  is Map
        ? (json['participants']['items'] is List
          ? (json['participants']['items'] as List)
              .where((e) => e != null)
              .map((e) => UserCustomMarkerParticipants.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['participants'] is List
          ? (json['participants'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => UserCustomMarkerParticipants.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _circleImageURL = json['circleImageURL'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'latitude': _latitude, 'longitude': _longitude, 'hostUser': _hostUser?.toJson(), 'purpose': amplify_core.enumToString(_purpose), 'title': _title, 'comment': _comment, 'gatheringTime': _gatheringTime?.format(), 'maxParticipants': _maxParticipants, 'minAge': _minAge, 'maxAge': _maxAge, 'allowGender': amplify_core.enumToString(_allowGender), 'numParticipants': _numParticipants, 'messages': _messages?.map((Message? e) => e?.toJson()).toList(), 'participants': _participants?.map((UserCustomMarkerParticipants? e) => e?.toJson()).toList(), 'circleImageURL': _circleImageURL, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'latitude': _latitude,
    'longitude': _longitude,
    'hostUser': _hostUser,
    'purpose': _purpose,
    'title': _title,
    'comment': _comment,
    'gatheringTime': _gatheringTime,
    'maxParticipants': _maxParticipants,
    'minAge': _minAge,
    'maxAge': _maxAge,
    'allowGender': _allowGender,
    'numParticipants': _numParticipants,
    'messages': _messages,
    'participants': _participants,
    'circleImageURL': _circleImageURL,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<CustomMarkerModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<CustomMarkerModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final LATITUDE = amplify_core.QueryField(fieldName: "latitude");
  static final LONGITUDE = amplify_core.QueryField(fieldName: "longitude");
  static final HOSTUSER = amplify_core.QueryField(
    fieldName: "hostUser",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final PURPOSE = amplify_core.QueryField(fieldName: "purpose");
  static final TITLE = amplify_core.QueryField(fieldName: "title");
  static final COMMENT = amplify_core.QueryField(fieldName: "comment");
  static final GATHERINGTIME = amplify_core.QueryField(fieldName: "gatheringTime");
  static final MAXPARTICIPANTS = amplify_core.QueryField(fieldName: "maxParticipants");
  static final MINAGE = amplify_core.QueryField(fieldName: "minAge");
  static final MAXAGE = amplify_core.QueryField(fieldName: "maxAge");
  static final ALLOWGENDER = amplify_core.QueryField(fieldName: "allowGender");
  static final NUMPARTICIPANTS = amplify_core.QueryField(fieldName: "numParticipants");
  static final MESSAGES = amplify_core.QueryField(
    fieldName: "messages",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Message'));
  static final PARTICIPANTS = amplify_core.QueryField(
    fieldName: "participants",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'UserCustomMarkerParticipants'));
  static final CIRCLEIMAGEURL = amplify_core.QueryField(fieldName: "circleImageURL");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CustomMarker";
    modelSchemaDefinition.pluralName = "CustomMarkers";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["hostUserID"], name: "CustomMarkerByHostUser")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CustomMarker.LATITUDE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CustomMarker.LONGITUDE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: CustomMarker.HOSTUSER,
      isRequired: true,
      targetNames: ['hostUserID'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CustomMarker.PURPOSE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CustomMarker.TITLE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CustomMarker.COMMENT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CustomMarker.GATHERINGTIME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CustomMarker.MAXPARTICIPANTS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CustomMarker.MINAGE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CustomMarker.MAXAGE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CustomMarker.ALLOWGENDER,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CustomMarker.NUMPARTICIPANTS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: CustomMarker.MESSAGES,
      isRequired: false,
      ofModelName: 'Message',
      associatedKey: Message.CIRCLE
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: CustomMarker.PARTICIPANTS,
      isRequired: false,
      ofModelName: 'UserCustomMarkerParticipants',
      associatedKey: UserCustomMarkerParticipants.CUSTOMMARKER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CustomMarker.CIRCLEIMAGEURL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _CustomMarkerModelType extends amplify_core.ModelType<CustomMarker> {
  const _CustomMarkerModelType();
  
  @override
  CustomMarker fromJson(Map<String, dynamic> jsonData) {
    return CustomMarker.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'CustomMarker';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [CustomMarker] in your schema.
 */
class CustomMarkerModelIdentifier implements amplify_core.ModelIdentifier<CustomMarker> {
  final String id;

  /** Create an instance of CustomMarkerModelIdentifier using [id] the primary key. */
  const CustomMarkerModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'CustomMarkerModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is CustomMarkerModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}
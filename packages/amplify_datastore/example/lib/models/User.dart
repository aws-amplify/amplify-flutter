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


/** This is an auto generated class representing the User type in your schema. */
class User extends amplify_core.Model {
  static const classType = const _UserModelType();
  final String id;
  final String? _email;
  final String? _phone;
  final amplify_core.TemporalDate? _birthdate;
  final Gender? _gender;
  final UserStatus? _userStatus;
  final String? _nickname;
  final String? _comment;
  final String? _imageURL;
  final List<Message>? _messages;
  final List<CustomMarker>? _hostedCircles;
  final List<UserCustomMarkerParticipants>? _participatedCircles;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  UserModelIdentifier get modelIdentifier {
      return UserModelIdentifier(
        id: id
      );
  }
  
  String get email {
    try {
      return _email!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get phone {
    return _phone;
  }
  
  amplify_core.TemporalDate get birthdate {
    try {
      return _birthdate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Gender get gender {
    try {
      return _gender!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  UserStatus? get userStatus {
    return _userStatus;
  }
  
  String get nickname {
    try {
      return _nickname!;
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
  
  String? get imageURL {
    return _imageURL;
  }
  
  List<Message>? get messages {
    return _messages;
  }
  
  List<CustomMarker>? get hostedCircles {
    return _hostedCircles;
  }
  
  List<UserCustomMarkerParticipants>? get participatedCircles {
    return _participatedCircles;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const User._internal({required this.id, required email, phone, required birthdate, required gender, userStatus, required nickname, comment, imageURL, messages, hostedCircles, participatedCircles, createdAt, updatedAt}): _email = email, _phone = phone, _birthdate = birthdate, _gender = gender, _userStatus = userStatus, _nickname = nickname, _comment = comment, _imageURL = imageURL, _messages = messages, _hostedCircles = hostedCircles, _participatedCircles = participatedCircles, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory User({String? id, required String email, String? phone, required amplify_core.TemporalDate birthdate, required Gender gender, UserStatus? userStatus, required String nickname, String? comment, String? imageURL, List<Message>? messages, List<CustomMarker>? hostedCircles, List<UserCustomMarkerParticipants>? participatedCircles}) {
    return User._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      email: email,
      phone: phone,
      birthdate: birthdate,
      gender: gender,
      userStatus: userStatus,
      nickname: nickname,
      comment: comment,
      imageURL: imageURL,
      messages: messages != null ? List<Message>.unmodifiable(messages) : messages,
      hostedCircles: hostedCircles != null ? List<CustomMarker>.unmodifiable(hostedCircles) : hostedCircles,
      participatedCircles: participatedCircles != null ? List<UserCustomMarkerParticipants>.unmodifiable(participatedCircles) : participatedCircles);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
      id == other.id &&
      _email == other._email &&
      _phone == other._phone &&
      _birthdate == other._birthdate &&
      _gender == other._gender &&
      _userStatus == other._userStatus &&
      _nickname == other._nickname &&
      _comment == other._comment &&
      _imageURL == other._imageURL &&
      DeepCollectionEquality().equals(_messages, other._messages) &&
      DeepCollectionEquality().equals(_hostedCircles, other._hostedCircles) &&
      DeepCollectionEquality().equals(_participatedCircles, other._participatedCircles);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("User {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("phone=" + "$_phone" + ", ");
    buffer.write("birthdate=" + (_birthdate != null ? _birthdate!.format() : "null") + ", ");
    buffer.write("gender=" + (_gender != null ? amplify_core.enumToString(_gender)! : "null") + ", ");
    buffer.write("userStatus=" + (_userStatus != null ? amplify_core.enumToString(_userStatus)! : "null") + ", ");
    buffer.write("nickname=" + "$_nickname" + ", ");
    buffer.write("comment=" + "$_comment" + ", ");
    buffer.write("imageURL=" + "$_imageURL" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  User copyWith({String? email, String? phone, amplify_core.TemporalDate? birthdate, Gender? gender, UserStatus? userStatus, String? nickname, String? comment, String? imageURL, List<Message>? messages, List<CustomMarker>? hostedCircles, List<UserCustomMarkerParticipants>? participatedCircles}) {
    return User._internal(
      id: id,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      birthdate: birthdate ?? this.birthdate,
      gender: gender ?? this.gender,
      userStatus: userStatus ?? this.userStatus,
      nickname: nickname ?? this.nickname,
      comment: comment ?? this.comment,
      imageURL: imageURL ?? this.imageURL,
      messages: messages ?? this.messages,
      hostedCircles: hostedCircles ?? this.hostedCircles,
      participatedCircles: participatedCircles ?? this.participatedCircles);
  }
  
  User copyWithModelFieldValues({
    ModelFieldValue<String>? email,
    ModelFieldValue<String?>? phone,
    ModelFieldValue<amplify_core.TemporalDate>? birthdate,
    ModelFieldValue<Gender>? gender,
    ModelFieldValue<UserStatus?>? userStatus,
    ModelFieldValue<String>? nickname,
    ModelFieldValue<String?>? comment,
    ModelFieldValue<String?>? imageURL,
    ModelFieldValue<List<Message>?>? messages,
    ModelFieldValue<List<CustomMarker>?>? hostedCircles,
    ModelFieldValue<List<UserCustomMarkerParticipants>?>? participatedCircles
  }) {
    return User._internal(
      id: id,
      email: email == null ? this.email : email.value,
      phone: phone == null ? this.phone : phone.value,
      birthdate: birthdate == null ? this.birthdate : birthdate.value,
      gender: gender == null ? this.gender : gender.value,
      userStatus: userStatus == null ? this.userStatus : userStatus.value,
      nickname: nickname == null ? this.nickname : nickname.value,
      comment: comment == null ? this.comment : comment.value,
      imageURL: imageURL == null ? this.imageURL : imageURL.value,
      messages: messages == null ? this.messages : messages.value,
      hostedCircles: hostedCircles == null ? this.hostedCircles : hostedCircles.value,
      participatedCircles: participatedCircles == null ? this.participatedCircles : participatedCircles.value
    );
  }
  
  User.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _email = json['email'],
      _phone = json['phone'],
      _birthdate = json['birthdate'] != null ? amplify_core.TemporalDate.fromString(json['birthdate']) : null,
      _gender = amplify_core.enumFromString<Gender>(json['gender'], Gender.values),
      _userStatus = amplify_core.enumFromString<UserStatus>(json['userStatus'], UserStatus.values),
      _nickname = json['nickname'],
      _comment = json['comment'],
      _imageURL = json['imageURL'],
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
      _hostedCircles = json['hostedCircles']  is Map
        ? (json['hostedCircles']['items'] is List
          ? (json['hostedCircles']['items'] as List)
              .where((e) => e != null)
              .map((e) => CustomMarker.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['hostedCircles'] is List
          ? (json['hostedCircles'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => CustomMarker.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _participatedCircles = json['participatedCircles']  is Map
        ? (json['participatedCircles']['items'] is List
          ? (json['participatedCircles']['items'] as List)
              .where((e) => e != null)
              .map((e) => UserCustomMarkerParticipants.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['participatedCircles'] is List
          ? (json['participatedCircles'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => UserCustomMarkerParticipants.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'email': _email, 'phone': _phone, 'birthdate': _birthdate?.format(), 'gender': amplify_core.enumToString(_gender), 'userStatus': amplify_core.enumToString(_userStatus), 'nickname': _nickname, 'comment': _comment, 'imageURL': _imageURL, 'messages': _messages?.map((Message? e) => e?.toJson()).toList(), 'hostedCircles': _hostedCircles?.map((CustomMarker? e) => e?.toJson()).toList(), 'participatedCircles': _participatedCircles?.map((UserCustomMarkerParticipants? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'email': _email,
    'phone': _phone,
    'birthdate': _birthdate,
    'gender': _gender,
    'userStatus': _userStatus,
    'nickname': _nickname,
    'comment': _comment,
    'imageURL': _imageURL,
    'messages': _messages,
    'hostedCircles': _hostedCircles,
    'participatedCircles': _participatedCircles,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<UserModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<UserModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final EMAIL = amplify_core.QueryField(fieldName: "email");
  static final PHONE = amplify_core.QueryField(fieldName: "phone");
  static final BIRTHDATE = amplify_core.QueryField(fieldName: "birthdate");
  static final GENDER = amplify_core.QueryField(fieldName: "gender");
  static final USERSTATUS = amplify_core.QueryField(fieldName: "userStatus");
  static final NICKNAME = amplify_core.QueryField(fieldName: "nickname");
  static final COMMENT = amplify_core.QueryField(fieldName: "comment");
  static final IMAGEURL = amplify_core.QueryField(fieldName: "imageURL");
  static final MESSAGES = amplify_core.QueryField(
    fieldName: "messages",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Message'));
  static final HOSTEDCIRCLES = amplify_core.QueryField(
    fieldName: "hostedCircles",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'CustomMarker'));
  static final PARTICIPATEDCIRCLES = amplify_core.QueryField(
    fieldName: "participatedCircles",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'UserCustomMarkerParticipants'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "User";
    modelSchemaDefinition.pluralName = "Users";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.READ,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.EMAIL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.PHONE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.BIRTHDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.GENDER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.USERSTATUS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.NICKNAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.COMMENT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.IMAGEURL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.MESSAGES,
      isRequired: false,
      ofModelName: 'Message',
      associatedKey: Message.SENDER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.HOSTEDCIRCLES,
      isRequired: false,
      ofModelName: 'CustomMarker',
      associatedKey: CustomMarker.HOSTUSER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.PARTICIPATEDCIRCLES,
      isRequired: false,
      ofModelName: 'UserCustomMarkerParticipants',
      associatedKey: UserCustomMarkerParticipants.USER
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

class _UserModelType extends amplify_core.ModelType<User> {
  const _UserModelType();
  
  @override
  User fromJson(Map<String, dynamic> jsonData) {
    return User.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'User';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [User] in your schema.
 */
class UserModelIdentifier implements amplify_core.ModelIdentifier<User> {
  final String id;

  /** Create an instance of UserModelIdentifier using [id] the primary key. */
  const UserModelIdentifier({
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
  String toString() => 'UserModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is UserModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}
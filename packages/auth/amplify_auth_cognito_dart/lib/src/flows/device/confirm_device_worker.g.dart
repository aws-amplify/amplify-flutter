// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_device_worker.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$_serializers = (new Serializers().toBuilder()
      ..add(ConfirmDeviceMessage.serializer))
    .build();
Serializer<ConfirmDeviceMessage> _$confirmDeviceMessageSerializer =
    new _$ConfirmDeviceMessageSerializer();

class _$ConfirmDeviceMessageSerializer
    implements StructuredSerializer<ConfirmDeviceMessage> {
  @override
  final Iterable<Type> types = const [
    ConfirmDeviceMessage,
    _$ConfirmDeviceMessage
  ];
  @override
  final String wireName = 'ConfirmDeviceMessage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ConfirmDeviceMessage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'accessToken',
      serializers.serialize(object.accessToken,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'newDeviceMetadata',
      serializers.serialize(object.newDeviceMetadata,
          specifiedType: const FullType(NewDeviceMetadataType)),
    ];

    return result;
  }

  @override
  ConfirmDeviceMessage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConfirmDeviceMessageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'accessToken':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'newDeviceMetadata':
          result.newDeviceMetadata.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NewDeviceMetadataType))!
              as NewDeviceMetadataType);
          break;
      }
    }

    return result.build();
  }
}

class _$ConfirmDeviceMessage extends ConfirmDeviceMessage {
  @override
  final String accessToken;
  @override
  final String password;
  @override
  final NewDeviceMetadataType newDeviceMetadata;

  factory _$ConfirmDeviceMessage(
          [void Function(ConfirmDeviceMessageBuilder)? updates]) =>
      (new ConfirmDeviceMessageBuilder()..update(updates))._build();

  _$ConfirmDeviceMessage._(
      {required this.accessToken,
      required this.password,
      required this.newDeviceMetadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'ConfirmDeviceMessage', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        password, r'ConfirmDeviceMessage', 'password');
    BuiltValueNullFieldError.checkNotNull(
        newDeviceMetadata, r'ConfirmDeviceMessage', 'newDeviceMetadata');
  }

  @override
  ConfirmDeviceMessage rebuild(
          void Function(ConfirmDeviceMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfirmDeviceMessageBuilder toBuilder() =>
      new ConfirmDeviceMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmDeviceMessage &&
        accessToken == other.accessToken &&
        password == other.password &&
        newDeviceMetadata == other.newDeviceMetadata;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, accessToken.hashCode), password.hashCode),
        newDeviceMetadata.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConfirmDeviceMessage')
          ..add('accessToken', accessToken)
          ..add('password', password)
          ..add('newDeviceMetadata', newDeviceMetadata))
        .toString();
  }
}

class ConfirmDeviceMessageBuilder
    implements Builder<ConfirmDeviceMessage, ConfirmDeviceMessageBuilder> {
  _$ConfirmDeviceMessage? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  NewDeviceMetadataTypeBuilder? _newDeviceMetadata;
  NewDeviceMetadataTypeBuilder get newDeviceMetadata =>
      _$this._newDeviceMetadata ??= new NewDeviceMetadataTypeBuilder();
  set newDeviceMetadata(NewDeviceMetadataTypeBuilder? newDeviceMetadata) =>
      _$this._newDeviceMetadata = newDeviceMetadata;

  ConfirmDeviceMessageBuilder();

  ConfirmDeviceMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _password = $v.password;
      _newDeviceMetadata = $v.newDeviceMetadata.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfirmDeviceMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfirmDeviceMessage;
  }

  @override
  void update(void Function(ConfirmDeviceMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfirmDeviceMessage build() => _build();

  _$ConfirmDeviceMessage _build() {
    _$ConfirmDeviceMessage _$result;
    try {
      _$result = _$v ??
          new _$ConfirmDeviceMessage._(
              accessToken: BuiltValueNullFieldError.checkNotNull(
                  accessToken, r'ConfirmDeviceMessage', 'accessToken'),
              password: BuiltValueNullFieldError.checkNotNull(
                  password, r'ConfirmDeviceMessage', 'password'),
              newDeviceMetadata: newDeviceMetadata.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'newDeviceMetadata';
        newDeviceMetadata.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ConfirmDeviceMessage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

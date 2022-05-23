// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.user_context_data_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserContextDataType extends UserContextDataType {
  @override
  final String? encodedData;

  factory _$UserContextDataType(
          [void Function(UserContextDataTypeBuilder)? updates]) =>
      (new UserContextDataTypeBuilder()..update(updates))._build();

  _$UserContextDataType._({this.encodedData}) : super._();

  @override
  UserContextDataType rebuild(
          void Function(UserContextDataTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserContextDataTypeBuilder toBuilder() =>
      new UserContextDataTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserContextDataType && encodedData == other.encodedData;
  }

  @override
  int get hashCode {
    return $jf($jc(0, encodedData.hashCode));
  }
}

class UserContextDataTypeBuilder
    implements Builder<UserContextDataType, UserContextDataTypeBuilder> {
  _$UserContextDataType? _$v;

  String? _encodedData;
  String? get encodedData => _$this._encodedData;
  set encodedData(String? encodedData) => _$this._encodedData = encodedData;

  UserContextDataTypeBuilder() {
    UserContextDataType._init(this);
  }

  UserContextDataTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _encodedData = $v.encodedData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserContextDataType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserContextDataType;
  }

  @override
  void update(void Function(UserContextDataTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserContextDataType build() => _build();

  _$UserContextDataType _build() {
    final _$result =
        _$v ?? new _$UserContextDataType._(encodedData: encodedData);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

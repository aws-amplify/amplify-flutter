// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.attribute_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttributeType extends AttributeType {
  @override
  final String name;
  @override
  final String? value;

  factory _$AttributeType([void Function(AttributeTypeBuilder)? updates]) =>
      (new AttributeTypeBuilder()..update(updates))._build();

  _$AttributeType._({required this.name, this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'AttributeType', 'name');
  }

  @override
  AttributeType rebuild(void Function(AttributeTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttributeTypeBuilder toBuilder() => new AttributeTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttributeType && name == other.name && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), value.hashCode));
  }
}

class AttributeTypeBuilder
    implements Builder<AttributeType, AttributeTypeBuilder> {
  _$AttributeType? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  AttributeTypeBuilder() {
    AttributeType._init(this);
  }

  AttributeTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttributeType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttributeType;
  }

  @override
  void update(void Function(AttributeTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttributeType build() => _build();

  _$AttributeType _build() {
    final _$result = _$v ??
        new _$AttributeType._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'AttributeType', 'name'),
            value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

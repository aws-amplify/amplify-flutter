// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.mfa_option_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MfaOptionType extends MfaOptionType {
  @override
  final String? attributeName;
  @override
  final _i2.DeliveryMediumType? deliveryMedium;

  factory _$MfaOptionType([void Function(MfaOptionTypeBuilder)? updates]) =>
      (new MfaOptionTypeBuilder()..update(updates))._build();

  _$MfaOptionType._({this.attributeName, this.deliveryMedium}) : super._();

  @override
  MfaOptionType rebuild(void Function(MfaOptionTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MfaOptionTypeBuilder toBuilder() => new MfaOptionTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MfaOptionType &&
        attributeName == other.attributeName &&
        deliveryMedium == other.deliveryMedium;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, attributeName.hashCode), deliveryMedium.hashCode));
  }
}

class MfaOptionTypeBuilder
    implements Builder<MfaOptionType, MfaOptionTypeBuilder> {
  _$MfaOptionType? _$v;

  String? _attributeName;
  String? get attributeName => _$this._attributeName;
  set attributeName(String? attributeName) =>
      _$this._attributeName = attributeName;

  _i2.DeliveryMediumType? _deliveryMedium;
  _i2.DeliveryMediumType? get deliveryMedium => _$this._deliveryMedium;
  set deliveryMedium(_i2.DeliveryMediumType? deliveryMedium) =>
      _$this._deliveryMedium = deliveryMedium;

  MfaOptionTypeBuilder() {
    MfaOptionType._init(this);
  }

  MfaOptionTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeName = $v.attributeName;
      _deliveryMedium = $v.deliveryMedium;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MfaOptionType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MfaOptionType;
  }

  @override
  void update(void Function(MfaOptionTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MfaOptionType build() => _build();

  _$MfaOptionType _build() {
    final _$result = _$v ??
        new _$MfaOptionType._(
            attributeName: attributeName, deliveryMedium: deliveryMedium);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

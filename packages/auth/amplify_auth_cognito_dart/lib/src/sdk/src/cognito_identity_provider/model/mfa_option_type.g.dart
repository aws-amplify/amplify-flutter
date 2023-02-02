// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.mfa_option_type;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, attributeName.hashCode);
    _$hash = $jc(_$hash, deliveryMedium.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

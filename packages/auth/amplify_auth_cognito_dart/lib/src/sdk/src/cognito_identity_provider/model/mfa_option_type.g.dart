// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mfa_option_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MfaOptionType extends MfaOptionType {
  @override
  final DeliveryMediumType? deliveryMedium;
  @override
  final String? attributeName;

  factory _$MfaOptionType([void Function(MfaOptionTypeBuilder)? updates]) =>
      (new MfaOptionTypeBuilder()..update(updates))._build();

  _$MfaOptionType._({this.deliveryMedium, this.attributeName}) : super._();

  @override
  MfaOptionType rebuild(void Function(MfaOptionTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MfaOptionTypeBuilder toBuilder() => new MfaOptionTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MfaOptionType &&
        deliveryMedium == other.deliveryMedium &&
        attributeName == other.attributeName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deliveryMedium.hashCode);
    _$hash = $jc(_$hash, attributeName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MfaOptionTypeBuilder
    implements Builder<MfaOptionType, MfaOptionTypeBuilder> {
  _$MfaOptionType? _$v;

  DeliveryMediumType? _deliveryMedium;
  DeliveryMediumType? get deliveryMedium => _$this._deliveryMedium;
  set deliveryMedium(DeliveryMediumType? deliveryMedium) =>
      _$this._deliveryMedium = deliveryMedium;

  String? _attributeName;
  String? get attributeName => _$this._attributeName;
  set attributeName(String? attributeName) =>
      _$this._attributeName = attributeName;

  MfaOptionTypeBuilder();

  MfaOptionTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deliveryMedium = $v.deliveryMedium;
      _attributeName = $v.attributeName;
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
            deliveryMedium: deliveryMedium, attributeName: attributeName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

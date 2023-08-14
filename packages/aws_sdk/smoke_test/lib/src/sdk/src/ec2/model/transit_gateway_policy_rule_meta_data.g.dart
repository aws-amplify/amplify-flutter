// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_policy_rule_meta_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayPolicyRuleMetaData
    extends TransitGatewayPolicyRuleMetaData {
  @override
  final String? metaDataKey;
  @override
  final String? metaDataValue;

  factory _$TransitGatewayPolicyRuleMetaData(
          [void Function(TransitGatewayPolicyRuleMetaDataBuilder)? updates]) =>
      (new TransitGatewayPolicyRuleMetaDataBuilder()..update(updates))._build();

  _$TransitGatewayPolicyRuleMetaData._({this.metaDataKey, this.metaDataValue})
      : super._();

  @override
  TransitGatewayPolicyRuleMetaData rebuild(
          void Function(TransitGatewayPolicyRuleMetaDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayPolicyRuleMetaDataBuilder toBuilder() =>
      new TransitGatewayPolicyRuleMetaDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayPolicyRuleMetaData &&
        metaDataKey == other.metaDataKey &&
        metaDataValue == other.metaDataValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, metaDataKey.hashCode);
    _$hash = $jc(_$hash, metaDataValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayPolicyRuleMetaDataBuilder
    implements
        Builder<TransitGatewayPolicyRuleMetaData,
            TransitGatewayPolicyRuleMetaDataBuilder> {
  _$TransitGatewayPolicyRuleMetaData? _$v;

  String? _metaDataKey;
  String? get metaDataKey => _$this._metaDataKey;
  set metaDataKey(String? metaDataKey) => _$this._metaDataKey = metaDataKey;

  String? _metaDataValue;
  String? get metaDataValue => _$this._metaDataValue;
  set metaDataValue(String? metaDataValue) =>
      _$this._metaDataValue = metaDataValue;

  TransitGatewayPolicyRuleMetaDataBuilder();

  TransitGatewayPolicyRuleMetaDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _metaDataKey = $v.metaDataKey;
      _metaDataValue = $v.metaDataValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayPolicyRuleMetaData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayPolicyRuleMetaData;
  }

  @override
  void update(void Function(TransitGatewayPolicyRuleMetaDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayPolicyRuleMetaData build() => _build();

  _$TransitGatewayPolicyRuleMetaData _build() {
    final _$result = _$v ??
        new _$TransitGatewayPolicyRuleMetaData._(
            metaDataKey: metaDataKey, metaDataValue: metaDataValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

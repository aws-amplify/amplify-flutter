// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_policy_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayPolicyRule extends TransitGatewayPolicyRule {
  @override
  final String? sourceCidrBlock;
  @override
  final String? sourcePortRange;
  @override
  final String? destinationCidrBlock;
  @override
  final String? destinationPortRange;
  @override
  final String? protocol;
  @override
  final TransitGatewayPolicyRuleMetaData? metaData;

  factory _$TransitGatewayPolicyRule(
          [void Function(TransitGatewayPolicyRuleBuilder)? updates]) =>
      (new TransitGatewayPolicyRuleBuilder()..update(updates))._build();

  _$TransitGatewayPolicyRule._(
      {this.sourceCidrBlock,
      this.sourcePortRange,
      this.destinationCidrBlock,
      this.destinationPortRange,
      this.protocol,
      this.metaData})
      : super._();

  @override
  TransitGatewayPolicyRule rebuild(
          void Function(TransitGatewayPolicyRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayPolicyRuleBuilder toBuilder() =>
      new TransitGatewayPolicyRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayPolicyRule &&
        sourceCidrBlock == other.sourceCidrBlock &&
        sourcePortRange == other.sourcePortRange &&
        destinationCidrBlock == other.destinationCidrBlock &&
        destinationPortRange == other.destinationPortRange &&
        protocol == other.protocol &&
        metaData == other.metaData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceCidrBlock.hashCode);
    _$hash = $jc(_$hash, sourcePortRange.hashCode);
    _$hash = $jc(_$hash, destinationCidrBlock.hashCode);
    _$hash = $jc(_$hash, destinationPortRange.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, metaData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayPolicyRuleBuilder
    implements
        Builder<TransitGatewayPolicyRule, TransitGatewayPolicyRuleBuilder> {
  _$TransitGatewayPolicyRule? _$v;

  String? _sourceCidrBlock;
  String? get sourceCidrBlock => _$this._sourceCidrBlock;
  set sourceCidrBlock(String? sourceCidrBlock) =>
      _$this._sourceCidrBlock = sourceCidrBlock;

  String? _sourcePortRange;
  String? get sourcePortRange => _$this._sourcePortRange;
  set sourcePortRange(String? sourcePortRange) =>
      _$this._sourcePortRange = sourcePortRange;

  String? _destinationCidrBlock;
  String? get destinationCidrBlock => _$this._destinationCidrBlock;
  set destinationCidrBlock(String? destinationCidrBlock) =>
      _$this._destinationCidrBlock = destinationCidrBlock;

  String? _destinationPortRange;
  String? get destinationPortRange => _$this._destinationPortRange;
  set destinationPortRange(String? destinationPortRange) =>
      _$this._destinationPortRange = destinationPortRange;

  String? _protocol;
  String? get protocol => _$this._protocol;
  set protocol(String? protocol) => _$this._protocol = protocol;

  TransitGatewayPolicyRuleMetaDataBuilder? _metaData;
  TransitGatewayPolicyRuleMetaDataBuilder get metaData =>
      _$this._metaData ??= new TransitGatewayPolicyRuleMetaDataBuilder();
  set metaData(TransitGatewayPolicyRuleMetaDataBuilder? metaData) =>
      _$this._metaData = metaData;

  TransitGatewayPolicyRuleBuilder();

  TransitGatewayPolicyRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceCidrBlock = $v.sourceCidrBlock;
      _sourcePortRange = $v.sourcePortRange;
      _destinationCidrBlock = $v.destinationCidrBlock;
      _destinationPortRange = $v.destinationPortRange;
      _protocol = $v.protocol;
      _metaData = $v.metaData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayPolicyRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayPolicyRule;
  }

  @override
  void update(void Function(TransitGatewayPolicyRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayPolicyRule build() => _build();

  _$TransitGatewayPolicyRule _build() {
    _$TransitGatewayPolicyRule _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayPolicyRule._(
              sourceCidrBlock: sourceCidrBlock,
              sourcePortRange: sourcePortRange,
              destinationCidrBlock: destinationCidrBlock,
              destinationPortRange: destinationPortRange,
              protocol: protocol,
              metaData: _metaData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metaData';
        _metaData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayPolicyRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

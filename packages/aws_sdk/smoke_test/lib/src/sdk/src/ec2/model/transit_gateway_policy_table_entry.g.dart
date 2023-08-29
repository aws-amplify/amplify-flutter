// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_policy_table_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayPolicyTableEntry extends TransitGatewayPolicyTableEntry {
  @override
  final String? policyRuleNumber;
  @override
  final TransitGatewayPolicyRule? policyRule;
  @override
  final String? targetRouteTableId;

  factory _$TransitGatewayPolicyTableEntry(
          [void Function(TransitGatewayPolicyTableEntryBuilder)? updates]) =>
      (new TransitGatewayPolicyTableEntryBuilder()..update(updates))._build();

  _$TransitGatewayPolicyTableEntry._(
      {this.policyRuleNumber, this.policyRule, this.targetRouteTableId})
      : super._();

  @override
  TransitGatewayPolicyTableEntry rebuild(
          void Function(TransitGatewayPolicyTableEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayPolicyTableEntryBuilder toBuilder() =>
      new TransitGatewayPolicyTableEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayPolicyTableEntry &&
        policyRuleNumber == other.policyRuleNumber &&
        policyRule == other.policyRule &&
        targetRouteTableId == other.targetRouteTableId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyRuleNumber.hashCode);
    _$hash = $jc(_$hash, policyRule.hashCode);
    _$hash = $jc(_$hash, targetRouteTableId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayPolicyTableEntryBuilder
    implements
        Builder<TransitGatewayPolicyTableEntry,
            TransitGatewayPolicyTableEntryBuilder> {
  _$TransitGatewayPolicyTableEntry? _$v;

  String? _policyRuleNumber;
  String? get policyRuleNumber => _$this._policyRuleNumber;
  set policyRuleNumber(String? policyRuleNumber) =>
      _$this._policyRuleNumber = policyRuleNumber;

  TransitGatewayPolicyRuleBuilder? _policyRule;
  TransitGatewayPolicyRuleBuilder get policyRule =>
      _$this._policyRule ??= new TransitGatewayPolicyRuleBuilder();
  set policyRule(TransitGatewayPolicyRuleBuilder? policyRule) =>
      _$this._policyRule = policyRule;

  String? _targetRouteTableId;
  String? get targetRouteTableId => _$this._targetRouteTableId;
  set targetRouteTableId(String? targetRouteTableId) =>
      _$this._targetRouteTableId = targetRouteTableId;

  TransitGatewayPolicyTableEntryBuilder();

  TransitGatewayPolicyTableEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyRuleNumber = $v.policyRuleNumber;
      _policyRule = $v.policyRule?.toBuilder();
      _targetRouteTableId = $v.targetRouteTableId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayPolicyTableEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayPolicyTableEntry;
  }

  @override
  void update(void Function(TransitGatewayPolicyTableEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayPolicyTableEntry build() => _build();

  _$TransitGatewayPolicyTableEntry _build() {
    _$TransitGatewayPolicyTableEntry _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayPolicyTableEntry._(
              policyRuleNumber: policyRuleNumber,
              policyRule: _policyRule?.build(),
              targetRouteTableId: targetRouteTableId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policyRule';
        _policyRule?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayPolicyTableEntry', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

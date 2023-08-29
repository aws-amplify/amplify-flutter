// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_transit_gateway_policy_table_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateTransitGatewayPolicyTableResult
    extends DisassociateTransitGatewayPolicyTableResult {
  @override
  final TransitGatewayPolicyTableAssociation? association;

  factory _$DisassociateTransitGatewayPolicyTableResult(
          [void Function(DisassociateTransitGatewayPolicyTableResultBuilder)?
              updates]) =>
      (new DisassociateTransitGatewayPolicyTableResultBuilder()
            ..update(updates))
          ._build();

  _$DisassociateTransitGatewayPolicyTableResult._({this.association})
      : super._();

  @override
  DisassociateTransitGatewayPolicyTableResult rebuild(
          void Function(DisassociateTransitGatewayPolicyTableResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateTransitGatewayPolicyTableResultBuilder toBuilder() =>
      new DisassociateTransitGatewayPolicyTableResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateTransitGatewayPolicyTableResult &&
        association == other.association;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, association.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateTransitGatewayPolicyTableResultBuilder
    implements
        Builder<DisassociateTransitGatewayPolicyTableResult,
            DisassociateTransitGatewayPolicyTableResultBuilder> {
  _$DisassociateTransitGatewayPolicyTableResult? _$v;

  TransitGatewayPolicyTableAssociationBuilder? _association;
  TransitGatewayPolicyTableAssociationBuilder get association =>
      _$this._association ??= new TransitGatewayPolicyTableAssociationBuilder();
  set association(TransitGatewayPolicyTableAssociationBuilder? association) =>
      _$this._association = association;

  DisassociateTransitGatewayPolicyTableResultBuilder();

  DisassociateTransitGatewayPolicyTableResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _association = $v.association?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateTransitGatewayPolicyTableResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateTransitGatewayPolicyTableResult;
  }

  @override
  void update(
      void Function(DisassociateTransitGatewayPolicyTableResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateTransitGatewayPolicyTableResult build() => _build();

  _$DisassociateTransitGatewayPolicyTableResult _build() {
    _$DisassociateTransitGatewayPolicyTableResult _$result;
    try {
      _$result = _$v ??
          new _$DisassociateTransitGatewayPolicyTableResult._(
              association: _association?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'association';
        _association?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisassociateTransitGatewayPolicyTableResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

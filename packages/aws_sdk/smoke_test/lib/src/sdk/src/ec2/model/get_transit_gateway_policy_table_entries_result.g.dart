// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transit_gateway_policy_table_entries_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTransitGatewayPolicyTableEntriesResult
    extends GetTransitGatewayPolicyTableEntriesResult {
  @override
  final _i2.BuiltList<TransitGatewayPolicyTableEntry>?
      transitGatewayPolicyTableEntries;

  factory _$GetTransitGatewayPolicyTableEntriesResult(
          [void Function(GetTransitGatewayPolicyTableEntriesResultBuilder)?
              updates]) =>
      (new GetTransitGatewayPolicyTableEntriesResultBuilder()..update(updates))
          ._build();

  _$GetTransitGatewayPolicyTableEntriesResult._(
      {this.transitGatewayPolicyTableEntries})
      : super._();

  @override
  GetTransitGatewayPolicyTableEntriesResult rebuild(
          void Function(GetTransitGatewayPolicyTableEntriesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTransitGatewayPolicyTableEntriesResultBuilder toBuilder() =>
      new GetTransitGatewayPolicyTableEntriesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTransitGatewayPolicyTableEntriesResult &&
        transitGatewayPolicyTableEntries ==
            other.transitGatewayPolicyTableEntries;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayPolicyTableEntries.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetTransitGatewayPolicyTableEntriesResultBuilder
    implements
        Builder<GetTransitGatewayPolicyTableEntriesResult,
            GetTransitGatewayPolicyTableEntriesResultBuilder> {
  _$GetTransitGatewayPolicyTableEntriesResult? _$v;

  _i2.ListBuilder<TransitGatewayPolicyTableEntry>?
      _transitGatewayPolicyTableEntries;
  _i2.ListBuilder<TransitGatewayPolicyTableEntry>
      get transitGatewayPolicyTableEntries =>
          _$this._transitGatewayPolicyTableEntries ??=
              new _i2.ListBuilder<TransitGatewayPolicyTableEntry>();
  set transitGatewayPolicyTableEntries(
          _i2.ListBuilder<TransitGatewayPolicyTableEntry>?
              transitGatewayPolicyTableEntries) =>
      _$this._transitGatewayPolicyTableEntries =
          transitGatewayPolicyTableEntries;

  GetTransitGatewayPolicyTableEntriesResultBuilder();

  GetTransitGatewayPolicyTableEntriesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPolicyTableEntries =
          $v.transitGatewayPolicyTableEntries?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTransitGatewayPolicyTableEntriesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTransitGatewayPolicyTableEntriesResult;
  }

  @override
  void update(
      void Function(GetTransitGatewayPolicyTableEntriesResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTransitGatewayPolicyTableEntriesResult build() => _build();

  _$GetTransitGatewayPolicyTableEntriesResult _build() {
    _$GetTransitGatewayPolicyTableEntriesResult _$result;
    try {
      _$result = _$v ??
          new _$GetTransitGatewayPolicyTableEntriesResult._(
              transitGatewayPolicyTableEntries:
                  _transitGatewayPolicyTableEntries?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayPolicyTableEntries';
        _transitGatewayPolicyTableEntries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTransitGatewayPolicyTableEntriesResult',
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

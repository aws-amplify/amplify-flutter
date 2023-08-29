// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_transit_gateway_prefix_list_reference_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyTransitGatewayPrefixListReferenceResult
    extends ModifyTransitGatewayPrefixListReferenceResult {
  @override
  final TransitGatewayPrefixListReference? transitGatewayPrefixListReference;

  factory _$ModifyTransitGatewayPrefixListReferenceResult(
          [void Function(ModifyTransitGatewayPrefixListReferenceResultBuilder)?
              updates]) =>
      (new ModifyTransitGatewayPrefixListReferenceResultBuilder()
            ..update(updates))
          ._build();

  _$ModifyTransitGatewayPrefixListReferenceResult._(
      {this.transitGatewayPrefixListReference})
      : super._();

  @override
  ModifyTransitGatewayPrefixListReferenceResult rebuild(
          void Function(ModifyTransitGatewayPrefixListReferenceResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyTransitGatewayPrefixListReferenceResultBuilder toBuilder() =>
      new ModifyTransitGatewayPrefixListReferenceResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyTransitGatewayPrefixListReferenceResult &&
        transitGatewayPrefixListReference ==
            other.transitGatewayPrefixListReference;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayPrefixListReference.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyTransitGatewayPrefixListReferenceResultBuilder
    implements
        Builder<ModifyTransitGatewayPrefixListReferenceResult,
            ModifyTransitGatewayPrefixListReferenceResultBuilder> {
  _$ModifyTransitGatewayPrefixListReferenceResult? _$v;

  TransitGatewayPrefixListReferenceBuilder? _transitGatewayPrefixListReference;
  TransitGatewayPrefixListReferenceBuilder
      get transitGatewayPrefixListReference =>
          _$this._transitGatewayPrefixListReference ??=
              new TransitGatewayPrefixListReferenceBuilder();
  set transitGatewayPrefixListReference(
          TransitGatewayPrefixListReferenceBuilder?
              transitGatewayPrefixListReference) =>
      _$this._transitGatewayPrefixListReference =
          transitGatewayPrefixListReference;

  ModifyTransitGatewayPrefixListReferenceResultBuilder();

  ModifyTransitGatewayPrefixListReferenceResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPrefixListReference =
          $v.transitGatewayPrefixListReference?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyTransitGatewayPrefixListReferenceResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyTransitGatewayPrefixListReferenceResult;
  }

  @override
  void update(
      void Function(ModifyTransitGatewayPrefixListReferenceResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyTransitGatewayPrefixListReferenceResult build() => _build();

  _$ModifyTransitGatewayPrefixListReferenceResult _build() {
    _$ModifyTransitGatewayPrefixListReferenceResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyTransitGatewayPrefixListReferenceResult._(
              transitGatewayPrefixListReference:
                  _transitGatewayPrefixListReference?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayPrefixListReference';
        _transitGatewayPrefixListReference?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyTransitGatewayPrefixListReferenceResult',
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

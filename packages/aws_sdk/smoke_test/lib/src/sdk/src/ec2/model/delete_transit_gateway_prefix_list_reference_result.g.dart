// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_prefix_list_reference_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayPrefixListReferenceResult
    extends DeleteTransitGatewayPrefixListReferenceResult {
  @override
  final TransitGatewayPrefixListReference? transitGatewayPrefixListReference;

  factory _$DeleteTransitGatewayPrefixListReferenceResult(
          [void Function(DeleteTransitGatewayPrefixListReferenceResultBuilder)?
              updates]) =>
      (new DeleteTransitGatewayPrefixListReferenceResultBuilder()
            ..update(updates))
          ._build();

  _$DeleteTransitGatewayPrefixListReferenceResult._(
      {this.transitGatewayPrefixListReference})
      : super._();

  @override
  DeleteTransitGatewayPrefixListReferenceResult rebuild(
          void Function(DeleteTransitGatewayPrefixListReferenceResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayPrefixListReferenceResultBuilder toBuilder() =>
      new DeleteTransitGatewayPrefixListReferenceResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayPrefixListReferenceResult &&
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

class DeleteTransitGatewayPrefixListReferenceResultBuilder
    implements
        Builder<DeleteTransitGatewayPrefixListReferenceResult,
            DeleteTransitGatewayPrefixListReferenceResultBuilder> {
  _$DeleteTransitGatewayPrefixListReferenceResult? _$v;

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

  DeleteTransitGatewayPrefixListReferenceResultBuilder();

  DeleteTransitGatewayPrefixListReferenceResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPrefixListReference =
          $v.transitGatewayPrefixListReference?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayPrefixListReferenceResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayPrefixListReferenceResult;
  }

  @override
  void update(
      void Function(DeleteTransitGatewayPrefixListReferenceResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayPrefixListReferenceResult build() => _build();

  _$DeleteTransitGatewayPrefixListReferenceResult _build() {
    _$DeleteTransitGatewayPrefixListReferenceResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteTransitGatewayPrefixListReferenceResult._(
              transitGatewayPrefixListReference:
                  _transitGatewayPrefixListReference?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayPrefixListReference';
        _transitGatewayPrefixListReference?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteTransitGatewayPrefixListReferenceResult',
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

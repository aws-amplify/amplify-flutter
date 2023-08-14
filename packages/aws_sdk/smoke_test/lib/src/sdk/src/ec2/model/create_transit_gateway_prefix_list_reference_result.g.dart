// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_prefix_list_reference_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayPrefixListReferenceResult
    extends CreateTransitGatewayPrefixListReferenceResult {
  @override
  final TransitGatewayPrefixListReference? transitGatewayPrefixListReference;

  factory _$CreateTransitGatewayPrefixListReferenceResult(
          [void Function(CreateTransitGatewayPrefixListReferenceResultBuilder)?
              updates]) =>
      (new CreateTransitGatewayPrefixListReferenceResultBuilder()
            ..update(updates))
          ._build();

  _$CreateTransitGatewayPrefixListReferenceResult._(
      {this.transitGatewayPrefixListReference})
      : super._();

  @override
  CreateTransitGatewayPrefixListReferenceResult rebuild(
          void Function(CreateTransitGatewayPrefixListReferenceResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayPrefixListReferenceResultBuilder toBuilder() =>
      new CreateTransitGatewayPrefixListReferenceResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayPrefixListReferenceResult &&
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

class CreateTransitGatewayPrefixListReferenceResultBuilder
    implements
        Builder<CreateTransitGatewayPrefixListReferenceResult,
            CreateTransitGatewayPrefixListReferenceResultBuilder> {
  _$CreateTransitGatewayPrefixListReferenceResult? _$v;

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

  CreateTransitGatewayPrefixListReferenceResultBuilder();

  CreateTransitGatewayPrefixListReferenceResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPrefixListReference =
          $v.transitGatewayPrefixListReference?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayPrefixListReferenceResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayPrefixListReferenceResult;
  }

  @override
  void update(
      void Function(CreateTransitGatewayPrefixListReferenceResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayPrefixListReferenceResult build() => _build();

  _$CreateTransitGatewayPrefixListReferenceResult _build() {
    _$CreateTransitGatewayPrefixListReferenceResult _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayPrefixListReferenceResult._(
              transitGatewayPrefixListReference:
                  _transitGatewayPrefixListReference?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayPrefixListReference';
        _transitGatewayPrefixListReference?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayPrefixListReferenceResult',
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

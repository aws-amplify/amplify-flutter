// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transit_gateway_prefix_list_references_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTransitGatewayPrefixListReferencesResult
    extends GetTransitGatewayPrefixListReferencesResult {
  @override
  final _i2.BuiltList<TransitGatewayPrefixListReference>?
      transitGatewayPrefixListReferences;
  @override
  final String? nextToken;

  factory _$GetTransitGatewayPrefixListReferencesResult(
          [void Function(GetTransitGatewayPrefixListReferencesResultBuilder)?
              updates]) =>
      (new GetTransitGatewayPrefixListReferencesResultBuilder()
            ..update(updates))
          ._build();

  _$GetTransitGatewayPrefixListReferencesResult._(
      {this.transitGatewayPrefixListReferences, this.nextToken})
      : super._();

  @override
  GetTransitGatewayPrefixListReferencesResult rebuild(
          void Function(GetTransitGatewayPrefixListReferencesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTransitGatewayPrefixListReferencesResultBuilder toBuilder() =>
      new GetTransitGatewayPrefixListReferencesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTransitGatewayPrefixListReferencesResult &&
        transitGatewayPrefixListReferences ==
            other.transitGatewayPrefixListReferences &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayPrefixListReferences.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetTransitGatewayPrefixListReferencesResultBuilder
    implements
        Builder<GetTransitGatewayPrefixListReferencesResult,
            GetTransitGatewayPrefixListReferencesResultBuilder> {
  _$GetTransitGatewayPrefixListReferencesResult? _$v;

  _i2.ListBuilder<TransitGatewayPrefixListReference>?
      _transitGatewayPrefixListReferences;
  _i2.ListBuilder<TransitGatewayPrefixListReference>
      get transitGatewayPrefixListReferences =>
          _$this._transitGatewayPrefixListReferences ??=
              new _i2.ListBuilder<TransitGatewayPrefixListReference>();
  set transitGatewayPrefixListReferences(
          _i2.ListBuilder<TransitGatewayPrefixListReference>?
              transitGatewayPrefixListReferences) =>
      _$this._transitGatewayPrefixListReferences =
          transitGatewayPrefixListReferences;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetTransitGatewayPrefixListReferencesResultBuilder();

  GetTransitGatewayPrefixListReferencesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPrefixListReferences =
          $v.transitGatewayPrefixListReferences?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTransitGatewayPrefixListReferencesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTransitGatewayPrefixListReferencesResult;
  }

  @override
  void update(
      void Function(GetTransitGatewayPrefixListReferencesResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTransitGatewayPrefixListReferencesResult build() => _build();

  _$GetTransitGatewayPrefixListReferencesResult _build() {
    _$GetTransitGatewayPrefixListReferencesResult _$result;
    try {
      _$result = _$v ??
          new _$GetTransitGatewayPrefixListReferencesResult._(
              transitGatewayPrefixListReferences:
                  _transitGatewayPrefixListReferences?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayPrefixListReferences';
        _transitGatewayPrefixListReferences?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTransitGatewayPrefixListReferencesResult',
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_transit_gateway_routes_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportTransitGatewayRoutesResult
    extends ExportTransitGatewayRoutesResult {
  @override
  final String? s3Location;

  factory _$ExportTransitGatewayRoutesResult(
          [void Function(ExportTransitGatewayRoutesResultBuilder)? updates]) =>
      (new ExportTransitGatewayRoutesResultBuilder()..update(updates))._build();

  _$ExportTransitGatewayRoutesResult._({this.s3Location}) : super._();

  @override
  ExportTransitGatewayRoutesResult rebuild(
          void Function(ExportTransitGatewayRoutesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportTransitGatewayRoutesResultBuilder toBuilder() =>
      new ExportTransitGatewayRoutesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportTransitGatewayRoutesResult &&
        s3Location == other.s3Location;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, s3Location.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExportTransitGatewayRoutesResultBuilder
    implements
        Builder<ExportTransitGatewayRoutesResult,
            ExportTransitGatewayRoutesResultBuilder> {
  _$ExportTransitGatewayRoutesResult? _$v;

  String? _s3Location;
  String? get s3Location => _$this._s3Location;
  set s3Location(String? s3Location) => _$this._s3Location = s3Location;

  ExportTransitGatewayRoutesResultBuilder();

  ExportTransitGatewayRoutesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _s3Location = $v.s3Location;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportTransitGatewayRoutesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportTransitGatewayRoutesResult;
  }

  @override
  void update(void Function(ExportTransitGatewayRoutesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportTransitGatewayRoutesResult build() => _build();

  _$ExportTransitGatewayRoutesResult _build() {
    final _$result =
        _$v ?? new _$ExportTransitGatewayRoutesResult._(s3Location: s3Location);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

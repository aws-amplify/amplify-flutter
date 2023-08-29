// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reject_vpc_endpoint_connections_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RejectVpcEndpointConnectionsResult
    extends RejectVpcEndpointConnectionsResult {
  @override
  final _i2.BuiltList<UnsuccessfulItem>? unsuccessful;

  factory _$RejectVpcEndpointConnectionsResult(
          [void Function(RejectVpcEndpointConnectionsResultBuilder)?
              updates]) =>
      (new RejectVpcEndpointConnectionsResultBuilder()..update(updates))
          ._build();

  _$RejectVpcEndpointConnectionsResult._({this.unsuccessful}) : super._();

  @override
  RejectVpcEndpointConnectionsResult rebuild(
          void Function(RejectVpcEndpointConnectionsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RejectVpcEndpointConnectionsResultBuilder toBuilder() =>
      new RejectVpcEndpointConnectionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RejectVpcEndpointConnectionsResult &&
        unsuccessful == other.unsuccessful;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unsuccessful.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RejectVpcEndpointConnectionsResultBuilder
    implements
        Builder<RejectVpcEndpointConnectionsResult,
            RejectVpcEndpointConnectionsResultBuilder> {
  _$RejectVpcEndpointConnectionsResult? _$v;

  _i2.ListBuilder<UnsuccessfulItem>? _unsuccessful;
  _i2.ListBuilder<UnsuccessfulItem> get unsuccessful =>
      _$this._unsuccessful ??= new _i2.ListBuilder<UnsuccessfulItem>();
  set unsuccessful(_i2.ListBuilder<UnsuccessfulItem>? unsuccessful) =>
      _$this._unsuccessful = unsuccessful;

  RejectVpcEndpointConnectionsResultBuilder();

  RejectVpcEndpointConnectionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unsuccessful = $v.unsuccessful?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RejectVpcEndpointConnectionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RejectVpcEndpointConnectionsResult;
  }

  @override
  void update(
      void Function(RejectVpcEndpointConnectionsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RejectVpcEndpointConnectionsResult build() => _build();

  _$RejectVpcEndpointConnectionsResult _build() {
    _$RejectVpcEndpointConnectionsResult _$result;
    try {
      _$result = _$v ??
          new _$RejectVpcEndpointConnectionsResult._(
              unsuccessful: _unsuccessful?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'unsuccessful';
        _unsuccessful?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RejectVpcEndpointConnectionsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

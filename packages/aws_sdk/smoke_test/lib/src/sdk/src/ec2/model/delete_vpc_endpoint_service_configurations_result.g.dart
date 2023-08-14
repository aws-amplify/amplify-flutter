// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_vpc_endpoint_service_configurations_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVpcEndpointServiceConfigurationsResult
    extends DeleteVpcEndpointServiceConfigurationsResult {
  @override
  final _i2.BuiltList<UnsuccessfulItem>? unsuccessful;

  factory _$DeleteVpcEndpointServiceConfigurationsResult(
          [void Function(DeleteVpcEndpointServiceConfigurationsResultBuilder)?
              updates]) =>
      (new DeleteVpcEndpointServiceConfigurationsResultBuilder()
            ..update(updates))
          ._build();

  _$DeleteVpcEndpointServiceConfigurationsResult._({this.unsuccessful})
      : super._();

  @override
  DeleteVpcEndpointServiceConfigurationsResult rebuild(
          void Function(DeleteVpcEndpointServiceConfigurationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVpcEndpointServiceConfigurationsResultBuilder toBuilder() =>
      new DeleteVpcEndpointServiceConfigurationsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVpcEndpointServiceConfigurationsResult &&
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

class DeleteVpcEndpointServiceConfigurationsResultBuilder
    implements
        Builder<DeleteVpcEndpointServiceConfigurationsResult,
            DeleteVpcEndpointServiceConfigurationsResultBuilder> {
  _$DeleteVpcEndpointServiceConfigurationsResult? _$v;

  _i2.ListBuilder<UnsuccessfulItem>? _unsuccessful;
  _i2.ListBuilder<UnsuccessfulItem> get unsuccessful =>
      _$this._unsuccessful ??= new _i2.ListBuilder<UnsuccessfulItem>();
  set unsuccessful(_i2.ListBuilder<UnsuccessfulItem>? unsuccessful) =>
      _$this._unsuccessful = unsuccessful;

  DeleteVpcEndpointServiceConfigurationsResultBuilder();

  DeleteVpcEndpointServiceConfigurationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unsuccessful = $v.unsuccessful?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVpcEndpointServiceConfigurationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVpcEndpointServiceConfigurationsResult;
  }

  @override
  void update(
      void Function(DeleteVpcEndpointServiceConfigurationsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVpcEndpointServiceConfigurationsResult build() => _build();

  _$DeleteVpcEndpointServiceConfigurationsResult _build() {
    _$DeleteVpcEndpointServiceConfigurationsResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteVpcEndpointServiceConfigurationsResult._(
              unsuccessful: _unsuccessful?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'unsuccessful';
        _unsuccessful?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteVpcEndpointServiceConfigurationsResult',
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

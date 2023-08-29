// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_vpc_endpoint_service_configurations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVpcEndpointServiceConfigurationsRequest
    extends DeleteVpcEndpointServiceConfigurationsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? serviceIds;

  factory _$DeleteVpcEndpointServiceConfigurationsRequest(
          [void Function(DeleteVpcEndpointServiceConfigurationsRequestBuilder)?
              updates]) =>
      (new DeleteVpcEndpointServiceConfigurationsRequestBuilder()
            ..update(updates))
          ._build();

  _$DeleteVpcEndpointServiceConfigurationsRequest._(
      {required this.dryRun, this.serviceIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteVpcEndpointServiceConfigurationsRequest', 'dryRun');
  }

  @override
  DeleteVpcEndpointServiceConfigurationsRequest rebuild(
          void Function(DeleteVpcEndpointServiceConfigurationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVpcEndpointServiceConfigurationsRequestBuilder toBuilder() =>
      new DeleteVpcEndpointServiceConfigurationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVpcEndpointServiceConfigurationsRequest &&
        dryRun == other.dryRun &&
        serviceIds == other.serviceIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, serviceIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteVpcEndpointServiceConfigurationsRequestBuilder
    implements
        Builder<DeleteVpcEndpointServiceConfigurationsRequest,
            DeleteVpcEndpointServiceConfigurationsRequestBuilder> {
  _$DeleteVpcEndpointServiceConfigurationsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _serviceIds;
  _i3.ListBuilder<String> get serviceIds =>
      _$this._serviceIds ??= new _i3.ListBuilder<String>();
  set serviceIds(_i3.ListBuilder<String>? serviceIds) =>
      _$this._serviceIds = serviceIds;

  DeleteVpcEndpointServiceConfigurationsRequestBuilder() {
    DeleteVpcEndpointServiceConfigurationsRequest._init(this);
  }

  DeleteVpcEndpointServiceConfigurationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _serviceIds = $v.serviceIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVpcEndpointServiceConfigurationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVpcEndpointServiceConfigurationsRequest;
  }

  @override
  void update(
      void Function(DeleteVpcEndpointServiceConfigurationsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVpcEndpointServiceConfigurationsRequest build() => _build();

  _$DeleteVpcEndpointServiceConfigurationsRequest _build() {
    _$DeleteVpcEndpointServiceConfigurationsRequest _$result;
    try {
      _$result = _$v ??
          new _$DeleteVpcEndpointServiceConfigurationsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'DeleteVpcEndpointServiceConfigurationsRequest', 'dryRun'),
              serviceIds: _serviceIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serviceIds';
        _serviceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteVpcEndpointServiceConfigurationsRequest',
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

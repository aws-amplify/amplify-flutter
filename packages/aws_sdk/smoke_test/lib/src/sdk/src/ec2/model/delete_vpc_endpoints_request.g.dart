// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_vpc_endpoints_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVpcEndpointsRequest extends DeleteVpcEndpointsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? vpcEndpointIds;

  factory _$DeleteVpcEndpointsRequest(
          [void Function(DeleteVpcEndpointsRequestBuilder)? updates]) =>
      (new DeleteVpcEndpointsRequestBuilder()..update(updates))._build();

  _$DeleteVpcEndpointsRequest._({required this.dryRun, this.vpcEndpointIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteVpcEndpointsRequest', 'dryRun');
  }

  @override
  DeleteVpcEndpointsRequest rebuild(
          void Function(DeleteVpcEndpointsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVpcEndpointsRequestBuilder toBuilder() =>
      new DeleteVpcEndpointsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVpcEndpointsRequest &&
        dryRun == other.dryRun &&
        vpcEndpointIds == other.vpcEndpointIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, vpcEndpointIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteVpcEndpointsRequestBuilder
    implements
        Builder<DeleteVpcEndpointsRequest, DeleteVpcEndpointsRequestBuilder> {
  _$DeleteVpcEndpointsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _vpcEndpointIds;
  _i3.ListBuilder<String> get vpcEndpointIds =>
      _$this._vpcEndpointIds ??= new _i3.ListBuilder<String>();
  set vpcEndpointIds(_i3.ListBuilder<String>? vpcEndpointIds) =>
      _$this._vpcEndpointIds = vpcEndpointIds;

  DeleteVpcEndpointsRequestBuilder() {
    DeleteVpcEndpointsRequest._init(this);
  }

  DeleteVpcEndpointsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _vpcEndpointIds = $v.vpcEndpointIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVpcEndpointsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVpcEndpointsRequest;
  }

  @override
  void update(void Function(DeleteVpcEndpointsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVpcEndpointsRequest build() => _build();

  _$DeleteVpcEndpointsRequest _build() {
    _$DeleteVpcEndpointsRequest _$result;
    try {
      _$result = _$v ??
          new _$DeleteVpcEndpointsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DeleteVpcEndpointsRequest', 'dryRun'),
              vpcEndpointIds: _vpcEndpointIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpcEndpointIds';
        _vpcEndpointIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteVpcEndpointsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

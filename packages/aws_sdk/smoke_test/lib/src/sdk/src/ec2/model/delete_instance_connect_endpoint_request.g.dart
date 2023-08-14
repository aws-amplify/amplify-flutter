// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_instance_connect_endpoint_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteInstanceConnectEndpointRequest
    extends DeleteInstanceConnectEndpointRequest {
  @override
  final bool dryRun;
  @override
  final String? instanceConnectEndpointId;

  factory _$DeleteInstanceConnectEndpointRequest(
          [void Function(DeleteInstanceConnectEndpointRequestBuilder)?
              updates]) =>
      (new DeleteInstanceConnectEndpointRequestBuilder()..update(updates))
          ._build();

  _$DeleteInstanceConnectEndpointRequest._(
      {required this.dryRun, this.instanceConnectEndpointId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteInstanceConnectEndpointRequest', 'dryRun');
  }

  @override
  DeleteInstanceConnectEndpointRequest rebuild(
          void Function(DeleteInstanceConnectEndpointRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteInstanceConnectEndpointRequestBuilder toBuilder() =>
      new DeleteInstanceConnectEndpointRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteInstanceConnectEndpointRequest &&
        dryRun == other.dryRun &&
        instanceConnectEndpointId == other.instanceConnectEndpointId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceConnectEndpointId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteInstanceConnectEndpointRequestBuilder
    implements
        Builder<DeleteInstanceConnectEndpointRequest,
            DeleteInstanceConnectEndpointRequestBuilder> {
  _$DeleteInstanceConnectEndpointRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _instanceConnectEndpointId;
  String? get instanceConnectEndpointId => _$this._instanceConnectEndpointId;
  set instanceConnectEndpointId(String? instanceConnectEndpointId) =>
      _$this._instanceConnectEndpointId = instanceConnectEndpointId;

  DeleteInstanceConnectEndpointRequestBuilder() {
    DeleteInstanceConnectEndpointRequest._init(this);
  }

  DeleteInstanceConnectEndpointRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _instanceConnectEndpointId = $v.instanceConnectEndpointId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteInstanceConnectEndpointRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteInstanceConnectEndpointRequest;
  }

  @override
  void update(
      void Function(DeleteInstanceConnectEndpointRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteInstanceConnectEndpointRequest build() => _build();

  _$DeleteInstanceConnectEndpointRequest _build() {
    final _$result = _$v ??
        new _$DeleteInstanceConnectEndpointRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteInstanceConnectEndpointRequest', 'dryRun'),
            instanceConnectEndpointId: instanceConnectEndpointId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

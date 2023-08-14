// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_instance_uefi_data_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetInstanceUefiDataRequest extends GetInstanceUefiDataRequest {
  @override
  final String? instanceId;
  @override
  final bool dryRun;

  factory _$GetInstanceUefiDataRequest(
          [void Function(GetInstanceUefiDataRequestBuilder)? updates]) =>
      (new GetInstanceUefiDataRequestBuilder()..update(updates))._build();

  _$GetInstanceUefiDataRequest._({this.instanceId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetInstanceUefiDataRequest', 'dryRun');
  }

  @override
  GetInstanceUefiDataRequest rebuild(
          void Function(GetInstanceUefiDataRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetInstanceUefiDataRequestBuilder toBuilder() =>
      new GetInstanceUefiDataRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetInstanceUefiDataRequest &&
        instanceId == other.instanceId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetInstanceUefiDataRequestBuilder
    implements
        Builder<GetInstanceUefiDataRequest, GetInstanceUefiDataRequestBuilder> {
  _$GetInstanceUefiDataRequest? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetInstanceUefiDataRequestBuilder() {
    GetInstanceUefiDataRequest._init(this);
  }

  GetInstanceUefiDataRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetInstanceUefiDataRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetInstanceUefiDataRequest;
  }

  @override
  void update(void Function(GetInstanceUefiDataRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetInstanceUefiDataRequest build() => _build();

  _$GetInstanceUefiDataRequest _build() {
    final _$result = _$v ??
        new _$GetInstanceUefiDataRequest._(
            instanceId: instanceId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'GetInstanceUefiDataRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

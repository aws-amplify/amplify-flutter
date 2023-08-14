// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_password_data_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetPasswordDataRequest extends GetPasswordDataRequest {
  @override
  final String? instanceId;
  @override
  final bool dryRun;

  factory _$GetPasswordDataRequest(
          [void Function(GetPasswordDataRequestBuilder)? updates]) =>
      (new GetPasswordDataRequestBuilder()..update(updates))._build();

  _$GetPasswordDataRequest._({this.instanceId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetPasswordDataRequest', 'dryRun');
  }

  @override
  GetPasswordDataRequest rebuild(
          void Function(GetPasswordDataRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPasswordDataRequestBuilder toBuilder() =>
      new GetPasswordDataRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPasswordDataRequest &&
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

class GetPasswordDataRequestBuilder
    implements Builder<GetPasswordDataRequest, GetPasswordDataRequestBuilder> {
  _$GetPasswordDataRequest? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetPasswordDataRequestBuilder() {
    GetPasswordDataRequest._init(this);
  }

  GetPasswordDataRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetPasswordDataRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetPasswordDataRequest;
  }

  @override
  void update(void Function(GetPasswordDataRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPasswordDataRequest build() => _build();

  _$GetPasswordDataRequest _build() {
    final _$result = _$v ??
        new _$GetPasswordDataRequest._(
            instanceId: instanceId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'GetPasswordDataRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

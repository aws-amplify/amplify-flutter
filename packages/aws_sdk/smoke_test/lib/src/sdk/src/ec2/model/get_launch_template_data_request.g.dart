// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_launch_template_data_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetLaunchTemplateDataRequest extends GetLaunchTemplateDataRequest {
  @override
  final bool dryRun;
  @override
  final String? instanceId;

  factory _$GetLaunchTemplateDataRequest(
          [void Function(GetLaunchTemplateDataRequestBuilder)? updates]) =>
      (new GetLaunchTemplateDataRequestBuilder()..update(updates))._build();

  _$GetLaunchTemplateDataRequest._({required this.dryRun, this.instanceId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetLaunchTemplateDataRequest', 'dryRun');
  }

  @override
  GetLaunchTemplateDataRequest rebuild(
          void Function(GetLaunchTemplateDataRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLaunchTemplateDataRequestBuilder toBuilder() =>
      new GetLaunchTemplateDataRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLaunchTemplateDataRequest &&
        dryRun == other.dryRun &&
        instanceId == other.instanceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetLaunchTemplateDataRequestBuilder
    implements
        Builder<GetLaunchTemplateDataRequest,
            GetLaunchTemplateDataRequestBuilder> {
  _$GetLaunchTemplateDataRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  GetLaunchTemplateDataRequestBuilder() {
    GetLaunchTemplateDataRequest._init(this);
  }

  GetLaunchTemplateDataRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _instanceId = $v.instanceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetLaunchTemplateDataRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetLaunchTemplateDataRequest;
  }

  @override
  void update(void Function(GetLaunchTemplateDataRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetLaunchTemplateDataRequest build() => _build();

  _$GetLaunchTemplateDataRequest _build() {
    final _$result = _$v ??
        new _$GetLaunchTemplateDataRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'GetLaunchTemplateDataRequest', 'dryRun'),
            instanceId: instanceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

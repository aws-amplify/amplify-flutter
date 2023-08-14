// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'run_scheduled_instances_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RunScheduledInstancesRequest extends RunScheduledInstancesRequest {
  @override
  final String? clientToken;
  @override
  final bool dryRun;
  @override
  final int instanceCount;
  @override
  final ScheduledInstancesLaunchSpecification? launchSpecification;
  @override
  final String? scheduledInstanceId;

  factory _$RunScheduledInstancesRequest(
          [void Function(RunScheduledInstancesRequestBuilder)? updates]) =>
      (new RunScheduledInstancesRequestBuilder()..update(updates))._build();

  _$RunScheduledInstancesRequest._(
      {this.clientToken,
      required this.dryRun,
      required this.instanceCount,
      this.launchSpecification,
      this.scheduledInstanceId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'RunScheduledInstancesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        instanceCount, r'RunScheduledInstancesRequest', 'instanceCount');
  }

  @override
  RunScheduledInstancesRequest rebuild(
          void Function(RunScheduledInstancesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RunScheduledInstancesRequestBuilder toBuilder() =>
      new RunScheduledInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RunScheduledInstancesRequest &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun &&
        instanceCount == other.instanceCount &&
        launchSpecification == other.launchSpecification &&
        scheduledInstanceId == other.scheduledInstanceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceCount.hashCode);
    _$hash = $jc(_$hash, launchSpecification.hashCode);
    _$hash = $jc(_$hash, scheduledInstanceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RunScheduledInstancesRequestBuilder
    implements
        Builder<RunScheduledInstancesRequest,
            RunScheduledInstancesRequestBuilder> {
  _$RunScheduledInstancesRequest? _$v;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  int? _instanceCount;
  int? get instanceCount => _$this._instanceCount;
  set instanceCount(int? instanceCount) =>
      _$this._instanceCount = instanceCount;

  ScheduledInstancesLaunchSpecificationBuilder? _launchSpecification;
  ScheduledInstancesLaunchSpecificationBuilder get launchSpecification =>
      _$this._launchSpecification ??=
          new ScheduledInstancesLaunchSpecificationBuilder();
  set launchSpecification(
          ScheduledInstancesLaunchSpecificationBuilder? launchSpecification) =>
      _$this._launchSpecification = launchSpecification;

  String? _scheduledInstanceId;
  String? get scheduledInstanceId => _$this._scheduledInstanceId;
  set scheduledInstanceId(String? scheduledInstanceId) =>
      _$this._scheduledInstanceId = scheduledInstanceId;

  RunScheduledInstancesRequestBuilder() {
    RunScheduledInstancesRequest._init(this);
  }

  RunScheduledInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _instanceCount = $v.instanceCount;
      _launchSpecification = $v.launchSpecification?.toBuilder();
      _scheduledInstanceId = $v.scheduledInstanceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RunScheduledInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RunScheduledInstancesRequest;
  }

  @override
  void update(void Function(RunScheduledInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RunScheduledInstancesRequest build() => _build();

  _$RunScheduledInstancesRequest _build() {
    _$RunScheduledInstancesRequest _$result;
    try {
      _$result = _$v ??
          new _$RunScheduledInstancesRequest._(
              clientToken: clientToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'RunScheduledInstancesRequest', 'dryRun'),
              instanceCount: BuiltValueNullFieldError.checkNotNull(
                  instanceCount,
                  r'RunScheduledInstancesRequest',
                  'instanceCount'),
              launchSpecification: _launchSpecification?.build(),
              scheduledInstanceId: scheduledInstanceId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchSpecification';
        _launchSpecification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RunScheduledInstancesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

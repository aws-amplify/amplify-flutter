// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_console_screenshot_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetConsoleScreenshotRequest extends GetConsoleScreenshotRequest {
  @override
  final bool dryRun;
  @override
  final String? instanceId;
  @override
  final bool wakeUp;

  factory _$GetConsoleScreenshotRequest(
          [void Function(GetConsoleScreenshotRequestBuilder)? updates]) =>
      (new GetConsoleScreenshotRequestBuilder()..update(updates))._build();

  _$GetConsoleScreenshotRequest._(
      {required this.dryRun, this.instanceId, required this.wakeUp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetConsoleScreenshotRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        wakeUp, r'GetConsoleScreenshotRequest', 'wakeUp');
  }

  @override
  GetConsoleScreenshotRequest rebuild(
          void Function(GetConsoleScreenshotRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetConsoleScreenshotRequestBuilder toBuilder() =>
      new GetConsoleScreenshotRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetConsoleScreenshotRequest &&
        dryRun == other.dryRun &&
        instanceId == other.instanceId &&
        wakeUp == other.wakeUp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, wakeUp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetConsoleScreenshotRequestBuilder
    implements
        Builder<GetConsoleScreenshotRequest,
            GetConsoleScreenshotRequestBuilder> {
  _$GetConsoleScreenshotRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  bool? _wakeUp;
  bool? get wakeUp => _$this._wakeUp;
  set wakeUp(bool? wakeUp) => _$this._wakeUp = wakeUp;

  GetConsoleScreenshotRequestBuilder() {
    GetConsoleScreenshotRequest._init(this);
  }

  GetConsoleScreenshotRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _instanceId = $v.instanceId;
      _wakeUp = $v.wakeUp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetConsoleScreenshotRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetConsoleScreenshotRequest;
  }

  @override
  void update(void Function(GetConsoleScreenshotRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetConsoleScreenshotRequest build() => _build();

  _$GetConsoleScreenshotRequest _build() {
    final _$result = _$v ??
        new _$GetConsoleScreenshotRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'GetConsoleScreenshotRequest', 'dryRun'),
            instanceId: instanceId,
            wakeUp: BuiltValueNullFieldError.checkNotNull(
                wakeUp, r'GetConsoleScreenshotRequest', 'wakeUp'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

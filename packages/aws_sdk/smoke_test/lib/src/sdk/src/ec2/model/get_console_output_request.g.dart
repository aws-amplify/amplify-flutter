// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_console_output_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetConsoleOutputRequest extends GetConsoleOutputRequest {
  @override
  final String? instanceId;
  @override
  final bool dryRun;
  @override
  final bool latest;

  factory _$GetConsoleOutputRequest(
          [void Function(GetConsoleOutputRequestBuilder)? updates]) =>
      (new GetConsoleOutputRequestBuilder()..update(updates))._build();

  _$GetConsoleOutputRequest._(
      {this.instanceId, required this.dryRun, required this.latest})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetConsoleOutputRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        latest, r'GetConsoleOutputRequest', 'latest');
  }

  @override
  GetConsoleOutputRequest rebuild(
          void Function(GetConsoleOutputRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetConsoleOutputRequestBuilder toBuilder() =>
      new GetConsoleOutputRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetConsoleOutputRequest &&
        instanceId == other.instanceId &&
        dryRun == other.dryRun &&
        latest == other.latest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, latest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetConsoleOutputRequestBuilder
    implements
        Builder<GetConsoleOutputRequest, GetConsoleOutputRequestBuilder> {
  _$GetConsoleOutputRequest? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _latest;
  bool? get latest => _$this._latest;
  set latest(bool? latest) => _$this._latest = latest;

  GetConsoleOutputRequestBuilder() {
    GetConsoleOutputRequest._init(this);
  }

  GetConsoleOutputRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _dryRun = $v.dryRun;
      _latest = $v.latest;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetConsoleOutputRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetConsoleOutputRequest;
  }

  @override
  void update(void Function(GetConsoleOutputRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetConsoleOutputRequest build() => _build();

  _$GetConsoleOutputRequest _build() {
    final _$result = _$v ??
        new _$GetConsoleOutputRequest._(
            instanceId: instanceId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'GetConsoleOutputRequest', 'dryRun'),
            latest: BuiltValueNullFieldError.checkNotNull(
                latest, r'GetConsoleOutputRequest', 'latest'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

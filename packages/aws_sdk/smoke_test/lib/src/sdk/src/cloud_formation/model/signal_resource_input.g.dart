// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.signal_resource_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignalResourceInput extends SignalResourceInput {
  @override
  final String stackName;
  @override
  final String logicalResourceId;
  @override
  final String uniqueId;
  @override
  final _i3.ResourceSignalStatus status;

  factory _$SignalResourceInput(
          [void Function(SignalResourceInputBuilder)? updates]) =>
      (new SignalResourceInputBuilder()..update(updates))._build();

  _$SignalResourceInput._(
      {required this.stackName,
      required this.logicalResourceId,
      required this.uniqueId,
      required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackName, r'SignalResourceInput', 'stackName');
    BuiltValueNullFieldError.checkNotNull(
        logicalResourceId, r'SignalResourceInput', 'logicalResourceId');
    BuiltValueNullFieldError.checkNotNull(
        uniqueId, r'SignalResourceInput', 'uniqueId');
    BuiltValueNullFieldError.checkNotNull(
        status, r'SignalResourceInput', 'status');
  }

  @override
  SignalResourceInput rebuild(
          void Function(SignalResourceInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignalResourceInputBuilder toBuilder() =>
      new SignalResourceInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignalResourceInput &&
        stackName == other.stackName &&
        logicalResourceId == other.logicalResourceId &&
        uniqueId == other.uniqueId &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, logicalResourceId.hashCode);
    _$hash = $jc(_$hash, uniqueId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SignalResourceInputBuilder
    implements Builder<SignalResourceInput, SignalResourceInputBuilder> {
  _$SignalResourceInput? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _logicalResourceId;
  String? get logicalResourceId => _$this._logicalResourceId;
  set logicalResourceId(String? logicalResourceId) =>
      _$this._logicalResourceId = logicalResourceId;

  String? _uniqueId;
  String? get uniqueId => _$this._uniqueId;
  set uniqueId(String? uniqueId) => _$this._uniqueId = uniqueId;

  _i3.ResourceSignalStatus? _status;
  _i3.ResourceSignalStatus? get status => _$this._status;
  set status(_i3.ResourceSignalStatus? status) => _$this._status = status;

  SignalResourceInputBuilder() {
    SignalResourceInput._init(this);
  }

  SignalResourceInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _logicalResourceId = $v.logicalResourceId;
      _uniqueId = $v.uniqueId;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignalResourceInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignalResourceInput;
  }

  @override
  void update(void Function(SignalResourceInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignalResourceInput build() => _build();

  _$SignalResourceInput _build() {
    final _$result = _$v ??
        new _$SignalResourceInput._(
            stackName: BuiltValueNullFieldError.checkNotNull(
                stackName, r'SignalResourceInput', 'stackName'),
            logicalResourceId: BuiltValueNullFieldError.checkNotNull(
                logicalResourceId, r'SignalResourceInput', 'logicalResourceId'),
            uniqueId: BuiltValueNullFieldError.checkNotNull(
                uniqueId, r'SignalResourceInput', 'uniqueId'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'SignalResourceInput', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

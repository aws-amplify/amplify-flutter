// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.detect_stack_resource_drift_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetectStackResourceDriftInput extends DetectStackResourceDriftInput {
  @override
  final String stackName;
  @override
  final String logicalResourceId;

  factory _$DetectStackResourceDriftInput(
          [void Function(DetectStackResourceDriftInputBuilder)? updates]) =>
      (new DetectStackResourceDriftInputBuilder()..update(updates))._build();

  _$DetectStackResourceDriftInput._(
      {required this.stackName, required this.logicalResourceId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackName, r'DetectStackResourceDriftInput', 'stackName');
    BuiltValueNullFieldError.checkNotNull(logicalResourceId,
        r'DetectStackResourceDriftInput', 'logicalResourceId');
  }

  @override
  DetectStackResourceDriftInput rebuild(
          void Function(DetectStackResourceDriftInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetectStackResourceDriftInputBuilder toBuilder() =>
      new DetectStackResourceDriftInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetectStackResourceDriftInput &&
        stackName == other.stackName &&
        logicalResourceId == other.logicalResourceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, logicalResourceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DetectStackResourceDriftInputBuilder
    implements
        Builder<DetectStackResourceDriftInput,
            DetectStackResourceDriftInputBuilder> {
  _$DetectStackResourceDriftInput? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _logicalResourceId;
  String? get logicalResourceId => _$this._logicalResourceId;
  set logicalResourceId(String? logicalResourceId) =>
      _$this._logicalResourceId = logicalResourceId;

  DetectStackResourceDriftInputBuilder() {
    DetectStackResourceDriftInput._init(this);
  }

  DetectStackResourceDriftInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _logicalResourceId = $v.logicalResourceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetectStackResourceDriftInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetectStackResourceDriftInput;
  }

  @override
  void update(void Function(DetectStackResourceDriftInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetectStackResourceDriftInput build() => _build();

  _$DetectStackResourceDriftInput _build() {
    final _$result = _$v ??
        new _$DetectStackResourceDriftInput._(
            stackName: BuiltValueNullFieldError.checkNotNull(
                stackName, r'DetectStackResourceDriftInput', 'stackName'),
            logicalResourceId: BuiltValueNullFieldError.checkNotNull(
                logicalResourceId,
                r'DetectStackResourceDriftInput',
                'logicalResourceId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

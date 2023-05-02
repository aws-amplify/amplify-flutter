// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.detect_stack_drift_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetectStackDriftOutput extends DetectStackDriftOutput {
  @override
  final String stackDriftDetectionId;

  factory _$DetectStackDriftOutput(
          [void Function(DetectStackDriftOutputBuilder)? updates]) =>
      (new DetectStackDriftOutputBuilder()..update(updates))._build();

  _$DetectStackDriftOutput._({required this.stackDriftDetectionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(stackDriftDetectionId,
        r'DetectStackDriftOutput', 'stackDriftDetectionId');
  }

  @override
  DetectStackDriftOutput rebuild(
          void Function(DetectStackDriftOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetectStackDriftOutputBuilder toBuilder() =>
      new DetectStackDriftOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetectStackDriftOutput &&
        stackDriftDetectionId == other.stackDriftDetectionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackDriftDetectionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DetectStackDriftOutputBuilder
    implements Builder<DetectStackDriftOutput, DetectStackDriftOutputBuilder> {
  _$DetectStackDriftOutput? _$v;

  String? _stackDriftDetectionId;
  String? get stackDriftDetectionId => _$this._stackDriftDetectionId;
  set stackDriftDetectionId(String? stackDriftDetectionId) =>
      _$this._stackDriftDetectionId = stackDriftDetectionId;

  DetectStackDriftOutputBuilder() {
    DetectStackDriftOutput._init(this);
  }

  DetectStackDriftOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackDriftDetectionId = $v.stackDriftDetectionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetectStackDriftOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetectStackDriftOutput;
  }

  @override
  void update(void Function(DetectStackDriftOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetectStackDriftOutput build() => _build();

  _$DetectStackDriftOutput _build() {
    final _$result = _$v ??
        new _$DetectStackDriftOutput._(
            stackDriftDetectionId: BuiltValueNullFieldError.checkNotNull(
                stackDriftDetectionId,
                r'DetectStackDriftOutput',
                'stackDriftDetectionId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

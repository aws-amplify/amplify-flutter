// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.detect_stack_set_drift_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetectStackSetDriftOutput extends DetectStackSetDriftOutput {
  @override
  final String? operationId;

  factory _$DetectStackSetDriftOutput(
          [void Function(DetectStackSetDriftOutputBuilder)? updates]) =>
      (new DetectStackSetDriftOutputBuilder()..update(updates))._build();

  _$DetectStackSetDriftOutput._({this.operationId}) : super._();

  @override
  DetectStackSetDriftOutput rebuild(
          void Function(DetectStackSetDriftOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetectStackSetDriftOutputBuilder toBuilder() =>
      new DetectStackSetDriftOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetectStackSetDriftOutput &&
        operationId == other.operationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DetectStackSetDriftOutputBuilder
    implements
        Builder<DetectStackSetDriftOutput, DetectStackSetDriftOutputBuilder> {
  _$DetectStackSetDriftOutput? _$v;

  String? _operationId;
  String? get operationId => _$this._operationId;
  set operationId(String? operationId) => _$this._operationId = operationId;

  DetectStackSetDriftOutputBuilder() {
    DetectStackSetDriftOutput._init(this);
  }

  DetectStackSetDriftOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operationId = $v.operationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetectStackSetDriftOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetectStackSetDriftOutput;
  }

  @override
  void update(void Function(DetectStackSetDriftOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetectStackSetDriftOutput build() => _build();

  _$DetectStackSetDriftOutput _build() {
    final _$result =
        _$v ?? new _$DetectStackSetDriftOutput._(operationId: operationId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.detect_stack_resource_drift_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetectStackResourceDriftOutput extends DetectStackResourceDriftOutput {
  @override
  final _i2.StackResourceDrift stackResourceDrift;

  factory _$DetectStackResourceDriftOutput(
          [void Function(DetectStackResourceDriftOutputBuilder)? updates]) =>
      (new DetectStackResourceDriftOutputBuilder()..update(updates))._build();

  _$DetectStackResourceDriftOutput._({required this.stackResourceDrift})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(stackResourceDrift,
        r'DetectStackResourceDriftOutput', 'stackResourceDrift');
  }

  @override
  DetectStackResourceDriftOutput rebuild(
          void Function(DetectStackResourceDriftOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetectStackResourceDriftOutputBuilder toBuilder() =>
      new DetectStackResourceDriftOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetectStackResourceDriftOutput &&
        stackResourceDrift == other.stackResourceDrift;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackResourceDrift.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DetectStackResourceDriftOutputBuilder
    implements
        Builder<DetectStackResourceDriftOutput,
            DetectStackResourceDriftOutputBuilder> {
  _$DetectStackResourceDriftOutput? _$v;

  _i2.StackResourceDriftBuilder? _stackResourceDrift;
  _i2.StackResourceDriftBuilder get stackResourceDrift =>
      _$this._stackResourceDrift ??= new _i2.StackResourceDriftBuilder();
  set stackResourceDrift(_i2.StackResourceDriftBuilder? stackResourceDrift) =>
      _$this._stackResourceDrift = stackResourceDrift;

  DetectStackResourceDriftOutputBuilder() {
    DetectStackResourceDriftOutput._init(this);
  }

  DetectStackResourceDriftOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackResourceDrift = $v.stackResourceDrift.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetectStackResourceDriftOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetectStackResourceDriftOutput;
  }

  @override
  void update(void Function(DetectStackResourceDriftOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetectStackResourceDriftOutput build() => _build();

  _$DetectStackResourceDriftOutput _build() {
    _$DetectStackResourceDriftOutput _$result;
    try {
      _$result = _$v ??
          new _$DetectStackResourceDriftOutput._(
              stackResourceDrift: stackResourceDrift.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stackResourceDrift';
        stackResourceDrift.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DetectStackResourceDriftOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.detect_stack_drift_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetectStackDriftInput extends DetectStackDriftInput {
  @override
  final String stackName;
  @override
  final _i3.BuiltList<String>? logicalResourceIds;

  factory _$DetectStackDriftInput(
          [void Function(DetectStackDriftInputBuilder)? updates]) =>
      (new DetectStackDriftInputBuilder()..update(updates))._build();

  _$DetectStackDriftInput._({required this.stackName, this.logicalResourceIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackName, r'DetectStackDriftInput', 'stackName');
  }

  @override
  DetectStackDriftInput rebuild(
          void Function(DetectStackDriftInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetectStackDriftInputBuilder toBuilder() =>
      new DetectStackDriftInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetectStackDriftInput &&
        stackName == other.stackName &&
        logicalResourceIds == other.logicalResourceIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, logicalResourceIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DetectStackDriftInputBuilder
    implements Builder<DetectStackDriftInput, DetectStackDriftInputBuilder> {
  _$DetectStackDriftInput? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  _i3.ListBuilder<String>? _logicalResourceIds;
  _i3.ListBuilder<String> get logicalResourceIds =>
      _$this._logicalResourceIds ??= new _i3.ListBuilder<String>();
  set logicalResourceIds(_i3.ListBuilder<String>? logicalResourceIds) =>
      _$this._logicalResourceIds = logicalResourceIds;

  DetectStackDriftInputBuilder() {
    DetectStackDriftInput._init(this);
  }

  DetectStackDriftInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _logicalResourceIds = $v.logicalResourceIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetectStackDriftInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetectStackDriftInput;
  }

  @override
  void update(void Function(DetectStackDriftInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetectStackDriftInput build() => _build();

  _$DetectStackDriftInput _build() {
    _$DetectStackDriftInput _$result;
    try {
      _$result = _$v ??
          new _$DetectStackDriftInput._(
              stackName: BuiltValueNullFieldError.checkNotNull(
                  stackName, r'DetectStackDriftInput', 'stackName'),
              logicalResourceIds: _logicalResourceIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'logicalResourceIds';
        _logicalResourceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DetectStackDriftInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

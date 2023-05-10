// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.detect_stack_set_drift_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetectStackSetDriftInput extends DetectStackSetDriftInput {
  @override
  final String stackSetName;
  @override
  final _i3.StackSetOperationPreferences? operationPreferences;
  @override
  final String? operationId;
  @override
  final _i4.CallAs? callAs;

  factory _$DetectStackSetDriftInput(
          [void Function(DetectStackSetDriftInputBuilder)? updates]) =>
      (new DetectStackSetDriftInputBuilder()..update(updates))._build();

  _$DetectStackSetDriftInput._(
      {required this.stackSetName,
      this.operationPreferences,
      this.operationId,
      this.callAs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackSetName, r'DetectStackSetDriftInput', 'stackSetName');
  }

  @override
  DetectStackSetDriftInput rebuild(
          void Function(DetectStackSetDriftInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetectStackSetDriftInputBuilder toBuilder() =>
      new DetectStackSetDriftInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetectStackSetDriftInput &&
        stackSetName == other.stackSetName &&
        operationPreferences == other.operationPreferences &&
        operationId == other.operationId &&
        callAs == other.callAs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSetName.hashCode);
    _$hash = $jc(_$hash, operationPreferences.hashCode);
    _$hash = $jc(_$hash, operationId.hashCode);
    _$hash = $jc(_$hash, callAs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DetectStackSetDriftInputBuilder
    implements
        Builder<DetectStackSetDriftInput, DetectStackSetDriftInputBuilder> {
  _$DetectStackSetDriftInput? _$v;

  String? _stackSetName;
  String? get stackSetName => _$this._stackSetName;
  set stackSetName(String? stackSetName) => _$this._stackSetName = stackSetName;

  _i3.StackSetOperationPreferencesBuilder? _operationPreferences;
  _i3.StackSetOperationPreferencesBuilder get operationPreferences =>
      _$this._operationPreferences ??=
          new _i3.StackSetOperationPreferencesBuilder();
  set operationPreferences(
          _i3.StackSetOperationPreferencesBuilder? operationPreferences) =>
      _$this._operationPreferences = operationPreferences;

  String? _operationId;
  String? get operationId => _$this._operationId;
  set operationId(String? operationId) => _$this._operationId = operationId;

  _i4.CallAs? _callAs;
  _i4.CallAs? get callAs => _$this._callAs;
  set callAs(_i4.CallAs? callAs) => _$this._callAs = callAs;

  DetectStackSetDriftInputBuilder() {
    DetectStackSetDriftInput._init(this);
  }

  DetectStackSetDriftInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetName = $v.stackSetName;
      _operationPreferences = $v.operationPreferences?.toBuilder();
      _operationId = $v.operationId;
      _callAs = $v.callAs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetectStackSetDriftInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetectStackSetDriftInput;
  }

  @override
  void update(void Function(DetectStackSetDriftInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetectStackSetDriftInput build() => _build();

  _$DetectStackSetDriftInput _build() {
    _$DetectStackSetDriftInput _$result;
    try {
      _$result = _$v ??
          new _$DetectStackSetDriftInput._(
              stackSetName: BuiltValueNullFieldError.checkNotNull(
                  stackSetName, r'DetectStackSetDriftInput', 'stackSetName'),
              operationPreferences: _operationPreferences?.build(),
              operationId: operationId,
              callAs: callAs);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operationPreferences';
        _operationPreferences?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DetectStackSetDriftInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

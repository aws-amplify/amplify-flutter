// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simulate_policy_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SimulatePolicyResponse extends SimulatePolicyResponse {
  @override
  final _i3.BuiltList<_i2.EvaluationResult>? evaluationResults;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$SimulatePolicyResponse(
          [void Function(SimulatePolicyResponseBuilder)? updates]) =>
      (new SimulatePolicyResponseBuilder()..update(updates))._build();

  _$SimulatePolicyResponse._(
      {this.evaluationResults, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'SimulatePolicyResponse', 'isTruncated');
  }

  @override
  SimulatePolicyResponse rebuild(
          void Function(SimulatePolicyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimulatePolicyResponseBuilder toBuilder() =>
      new SimulatePolicyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimulatePolicyResponse &&
        evaluationResults == other.evaluationResults &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, evaluationResults.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SimulatePolicyResponseBuilder
    implements Builder<SimulatePolicyResponse, SimulatePolicyResponseBuilder> {
  _$SimulatePolicyResponse? _$v;

  _i3.ListBuilder<_i2.EvaluationResult>? _evaluationResults;
  _i3.ListBuilder<_i2.EvaluationResult> get evaluationResults =>
      _$this._evaluationResults ??= new _i3.ListBuilder<_i2.EvaluationResult>();
  set evaluationResults(
          _i3.ListBuilder<_i2.EvaluationResult>? evaluationResults) =>
      _$this._evaluationResults = evaluationResults;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  SimulatePolicyResponseBuilder() {
    SimulatePolicyResponse._init(this);
  }

  SimulatePolicyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _evaluationResults = $v.evaluationResults?.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimulatePolicyResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SimulatePolicyResponse;
  }

  @override
  void update(void Function(SimulatePolicyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SimulatePolicyResponse build() => _build();

  _$SimulatePolicyResponse _build() {
    _$SimulatePolicyResponse _$result;
    try {
      _$result = _$v ??
          new _$SimulatePolicyResponse._(
              evaluationResults: _evaluationResults?.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'SimulatePolicyResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'evaluationResults';
        _evaluationResults?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SimulatePolicyResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

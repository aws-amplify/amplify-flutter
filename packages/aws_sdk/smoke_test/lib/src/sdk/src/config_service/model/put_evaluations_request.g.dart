// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_evaluations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutEvaluationsRequest extends PutEvaluationsRequest {
  @override
  final _i4.BuiltList<_i3.Evaluation>? evaluations;
  @override
  final String resultToken;
  @override
  final bool testMode;

  factory _$PutEvaluationsRequest(
          [void Function(PutEvaluationsRequestBuilder)? updates]) =>
      (new PutEvaluationsRequestBuilder()..update(updates))._build();

  _$PutEvaluationsRequest._(
      {this.evaluations, required this.resultToken, required this.testMode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resultToken, r'PutEvaluationsRequest', 'resultToken');
    BuiltValueNullFieldError.checkNotNull(
        testMode, r'PutEvaluationsRequest', 'testMode');
  }

  @override
  PutEvaluationsRequest rebuild(
          void Function(PutEvaluationsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutEvaluationsRequestBuilder toBuilder() =>
      new PutEvaluationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutEvaluationsRequest &&
        evaluations == other.evaluations &&
        resultToken == other.resultToken &&
        testMode == other.testMode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, evaluations.hashCode);
    _$hash = $jc(_$hash, resultToken.hashCode);
    _$hash = $jc(_$hash, testMode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutEvaluationsRequestBuilder
    implements Builder<PutEvaluationsRequest, PutEvaluationsRequestBuilder> {
  _$PutEvaluationsRequest? _$v;

  _i4.ListBuilder<_i3.Evaluation>? _evaluations;
  _i4.ListBuilder<_i3.Evaluation> get evaluations =>
      _$this._evaluations ??= new _i4.ListBuilder<_i3.Evaluation>();
  set evaluations(_i4.ListBuilder<_i3.Evaluation>? evaluations) =>
      _$this._evaluations = evaluations;

  String? _resultToken;
  String? get resultToken => _$this._resultToken;
  set resultToken(String? resultToken) => _$this._resultToken = resultToken;

  bool? _testMode;
  bool? get testMode => _$this._testMode;
  set testMode(bool? testMode) => _$this._testMode = testMode;

  PutEvaluationsRequestBuilder() {
    PutEvaluationsRequest._init(this);
  }

  PutEvaluationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _evaluations = $v.evaluations?.toBuilder();
      _resultToken = $v.resultToken;
      _testMode = $v.testMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutEvaluationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutEvaluationsRequest;
  }

  @override
  void update(void Function(PutEvaluationsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutEvaluationsRequest build() => _build();

  _$PutEvaluationsRequest _build() {
    _$PutEvaluationsRequest _$result;
    try {
      _$result = _$v ??
          new _$PutEvaluationsRequest._(
              evaluations: _evaluations?.build(),
              resultToken: BuiltValueNullFieldError.checkNotNull(
                  resultToken, r'PutEvaluationsRequest', 'resultToken'),
              testMode: BuiltValueNullFieldError.checkNotNull(
                  testMode, r'PutEvaluationsRequest', 'testMode'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'evaluations';
        _evaluations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutEvaluationsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

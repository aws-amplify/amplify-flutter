// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'predict_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PredictOutput extends PredictOutput {
  @override
  final Prediction? prediction;

  factory _$PredictOutput([void Function(PredictOutputBuilder)? updates]) =>
      (new PredictOutputBuilder()..update(updates))._build();

  _$PredictOutput._({this.prediction}) : super._();

  @override
  PredictOutput rebuild(void Function(PredictOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PredictOutputBuilder toBuilder() => new PredictOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PredictOutput && prediction == other.prediction;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prediction.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PredictOutputBuilder
    implements Builder<PredictOutput, PredictOutputBuilder> {
  _$PredictOutput? _$v;

  PredictionBuilder? _prediction;
  PredictionBuilder get prediction =>
      _$this._prediction ??= new PredictionBuilder();
  set prediction(PredictionBuilder? prediction) =>
      _$this._prediction = prediction;

  PredictOutputBuilder();

  PredictOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prediction = $v.prediction?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PredictOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PredictOutput;
  }

  @override
  void update(void Function(PredictOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PredictOutput build() => _build();

  _$PredictOutput _build() {
    _$PredictOutput _$result;
    try {
      _$result = _$v ?? new _$PredictOutput._(prediction: _prediction?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prediction';
        _prediction?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PredictOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

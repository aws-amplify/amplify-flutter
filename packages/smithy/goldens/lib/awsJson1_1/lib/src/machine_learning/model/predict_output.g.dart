// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1.machine_learning.model.predict_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PredictOutput extends PredictOutput {
  @override
  final _i2.Prediction? prediction;

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
    return $jf($jc(0, prediction.hashCode));
  }
}

class PredictOutputBuilder
    implements Builder<PredictOutput, PredictOutputBuilder> {
  _$PredictOutput? _$v;

  _i2.PredictionBuilder? _prediction;
  _i2.PredictionBuilder get prediction =>
      _$this._prediction ??= new _i2.PredictionBuilder();
  set prediction(_i2.PredictionBuilder? prediction) =>
      _$this._prediction = prediction;

  PredictOutputBuilder() {
    PredictOutput._init(this);
  }

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1.machine_learning.model.prediction;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Prediction extends Prediction {
  @override
  final _i2.BuiltMap<_i3.DetailsAttributes, String>? details;
  @override
  final String? predictedLabel;
  @override
  final _i2.BuiltMap<String, double>? predictedScores;
  @override
  final double? predictedValue;

  factory _$Prediction([void Function(PredictionBuilder)? updates]) =>
      (new PredictionBuilder()..update(updates))._build();

  _$Prediction._(
      {this.details,
      this.predictedLabel,
      this.predictedScores,
      this.predictedValue})
      : super._();

  @override
  Prediction rebuild(void Function(PredictionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PredictionBuilder toBuilder() => new PredictionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Prediction &&
        details == other.details &&
        predictedLabel == other.predictedLabel &&
        predictedScores == other.predictedScores &&
        predictedValue == other.predictedValue;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, details.hashCode), predictedLabel.hashCode),
            predictedScores.hashCode),
        predictedValue.hashCode));
  }
}

class PredictionBuilder implements Builder<Prediction, PredictionBuilder> {
  _$Prediction? _$v;

  _i2.MapBuilder<_i3.DetailsAttributes, String>? _details;
  _i2.MapBuilder<_i3.DetailsAttributes, String> get details =>
      _$this._details ??= new _i2.MapBuilder<_i3.DetailsAttributes, String>();
  set details(_i2.MapBuilder<_i3.DetailsAttributes, String>? details) =>
      _$this._details = details;

  String? _predictedLabel;
  String? get predictedLabel => _$this._predictedLabel;
  set predictedLabel(String? predictedLabel) =>
      _$this._predictedLabel = predictedLabel;

  _i2.MapBuilder<String, double>? _predictedScores;
  _i2.MapBuilder<String, double> get predictedScores =>
      _$this._predictedScores ??= new _i2.MapBuilder<String, double>();
  set predictedScores(_i2.MapBuilder<String, double>? predictedScores) =>
      _$this._predictedScores = predictedScores;

  double? _predictedValue;
  double? get predictedValue => _$this._predictedValue;
  set predictedValue(double? predictedValue) =>
      _$this._predictedValue = predictedValue;

  PredictionBuilder() {
    Prediction._init(this);
  }

  PredictionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _details = $v.details?.toBuilder();
      _predictedLabel = $v.predictedLabel;
      _predictedScores = $v.predictedScores?.toBuilder();
      _predictedValue = $v.predictedValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Prediction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Prediction;
  }

  @override
  void update(void Function(PredictionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Prediction build() => _build();

  _$Prediction _build() {
    _$Prediction _$result;
    try {
      _$result = _$v ??
          new _$Prediction._(
              details: _details?.build(),
              predictedLabel: predictedLabel,
              predictedScores: _predictedScores?.build(),
              predictedValue: predictedValue);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();

        _$failedField = 'predictedScores';
        _predictedScores?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Prediction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

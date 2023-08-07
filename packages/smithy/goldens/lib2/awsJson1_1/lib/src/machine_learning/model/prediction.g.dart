// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Prediction extends Prediction {
  @override
  final String? predictedLabel;
  @override
  final double? predictedValue;
  @override
  final _i2.BuiltMap<String, double>? predictedScores;
  @override
  final _i2.BuiltMap<DetailsAttributes, String>? details;

  factory _$Prediction([void Function(PredictionBuilder)? updates]) =>
      (new PredictionBuilder()..update(updates))._build();

  _$Prediction._(
      {this.predictedLabel,
      this.predictedValue,
      this.predictedScores,
      this.details})
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
        predictedLabel == other.predictedLabel &&
        predictedValue == other.predictedValue &&
        predictedScores == other.predictedScores &&
        details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, predictedLabel.hashCode);
    _$hash = $jc(_$hash, predictedValue.hashCode);
    _$hash = $jc(_$hash, predictedScores.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PredictionBuilder implements Builder<Prediction, PredictionBuilder> {
  _$Prediction? _$v;

  String? _predictedLabel;
  String? get predictedLabel => _$this._predictedLabel;
  set predictedLabel(String? predictedLabel) =>
      _$this._predictedLabel = predictedLabel;

  double? _predictedValue;
  double? get predictedValue => _$this._predictedValue;
  set predictedValue(double? predictedValue) =>
      _$this._predictedValue = predictedValue;

  _i2.MapBuilder<String, double>? _predictedScores;
  _i2.MapBuilder<String, double> get predictedScores =>
      _$this._predictedScores ??= new _i2.MapBuilder<String, double>();
  set predictedScores(_i2.MapBuilder<String, double>? predictedScores) =>
      _$this._predictedScores = predictedScores;

  _i2.MapBuilder<DetailsAttributes, String>? _details;
  _i2.MapBuilder<DetailsAttributes, String> get details =>
      _$this._details ??= new _i2.MapBuilder<DetailsAttributes, String>();
  set details(_i2.MapBuilder<DetailsAttributes, String>? details) =>
      _$this._details = details;

  PredictionBuilder();

  PredictionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _predictedLabel = $v.predictedLabel;
      _predictedValue = $v.predictedValue;
      _predictedScores = $v.predictedScores?.toBuilder();
      _details = $v.details?.toBuilder();
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
              predictedLabel: predictedLabel,
              predictedValue: predictedValue,
              predictedScores: _predictedScores?.build(),
              details: _details?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'predictedScores';
        _predictedScores?.build();
        _$failedField = 'details';
        _details?.build();
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

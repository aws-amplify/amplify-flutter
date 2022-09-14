// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1.machine_learning.model.predict_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PredictInput extends PredictInput {
  @override
  final String mlModelId;
  @override
  final String predictEndpoint;
  @override
  final _i3.BuiltMap<String, String> record;

  factory _$PredictInput([void Function(PredictInputBuilder)? updates]) =>
      (new PredictInputBuilder()..update(updates))._build();

  _$PredictInput._(
      {required this.mlModelId,
      required this.predictEndpoint,
      required this.record})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        mlModelId, r'PredictInput', 'mlModelId');
    BuiltValueNullFieldError.checkNotNull(
        predictEndpoint, r'PredictInput', 'predictEndpoint');
    BuiltValueNullFieldError.checkNotNull(record, r'PredictInput', 'record');
  }

  @override
  PredictInput rebuild(void Function(PredictInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PredictInputBuilder toBuilder() => new PredictInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PredictInput &&
        mlModelId == other.mlModelId &&
        predictEndpoint == other.predictEndpoint &&
        record == other.record;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, mlModelId.hashCode), predictEndpoint.hashCode),
        record.hashCode));
  }
}

class PredictInputBuilder
    implements Builder<PredictInput, PredictInputBuilder> {
  _$PredictInput? _$v;

  String? _mlModelId;
  String? get mlModelId => _$this._mlModelId;
  set mlModelId(String? mlModelId) => _$this._mlModelId = mlModelId;

  String? _predictEndpoint;
  String? get predictEndpoint => _$this._predictEndpoint;
  set predictEndpoint(String? predictEndpoint) =>
      _$this._predictEndpoint = predictEndpoint;

  _i3.MapBuilder<String, String>? _record;
  _i3.MapBuilder<String, String> get record =>
      _$this._record ??= new _i3.MapBuilder<String, String>();
  set record(_i3.MapBuilder<String, String>? record) => _$this._record = record;

  PredictInputBuilder() {
    PredictInput._init(this);
  }

  PredictInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mlModelId = $v.mlModelId;
      _predictEndpoint = $v.predictEndpoint;
      _record = $v.record.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PredictInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PredictInput;
  }

  @override
  void update(void Function(PredictInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PredictInput build() => _build();

  _$PredictInput _build() {
    _$PredictInput _$result;
    try {
      _$result = _$v ??
          new _$PredictInput._(
              mlModelId: BuiltValueNullFieldError.checkNotNull(
                  mlModelId, r'PredictInput', 'mlModelId'),
              predictEndpoint: BuiltValueNullFieldError.checkNotNull(
                  predictEndpoint, r'PredictInput', 'predictEndpoint'),
              record: record.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'record';
        record.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PredictInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

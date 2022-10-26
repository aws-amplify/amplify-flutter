// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.api_stage;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiStage extends ApiStage {
  @override
  final String? apiId;
  @override
  final String? stage;
  @override
  final _i3.BuiltMap<String, _i2.ThrottleSettings>? throttle;

  factory _$ApiStage([void Function(ApiStageBuilder)? updates]) =>
      (new ApiStageBuilder()..update(updates))._build();

  _$ApiStage._({this.apiId, this.stage, this.throttle}) : super._();

  @override
  ApiStage rebuild(void Function(ApiStageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiStageBuilder toBuilder() => new ApiStageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiStage &&
        apiId == other.apiId &&
        stage == other.stage &&
        throttle == other.throttle;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, apiId.hashCode), stage.hashCode), throttle.hashCode));
  }
}

class ApiStageBuilder implements Builder<ApiStage, ApiStageBuilder> {
  _$ApiStage? _$v;

  String? _apiId;
  String? get apiId => _$this._apiId;
  set apiId(String? apiId) => _$this._apiId = apiId;

  String? _stage;
  String? get stage => _$this._stage;
  set stage(String? stage) => _$this._stage = stage;

  _i3.MapBuilder<String, _i2.ThrottleSettings>? _throttle;
  _i3.MapBuilder<String, _i2.ThrottleSettings> get throttle =>
      _$this._throttle ??= new _i3.MapBuilder<String, _i2.ThrottleSettings>();
  set throttle(_i3.MapBuilder<String, _i2.ThrottleSettings>? throttle) =>
      _$this._throttle = throttle;

  ApiStageBuilder() {
    ApiStage._init(this);
  }

  ApiStageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiId = $v.apiId;
      _stage = $v.stage;
      _throttle = $v.throttle?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiStage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiStage;
  }

  @override
  void update(void Function(ApiStageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiStage build() => _build();

  _$ApiStage _build() {
    _$ApiStage _$result;
    try {
      _$result = _$v ??
          new _$ApiStage._(
              apiId: apiId, stage: stage, throttle: _throttle?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'throttle';
        _throttle?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApiStage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

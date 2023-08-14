// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_stage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiStage extends ApiStage {
  @override
  final String? apiId;
  @override
  final String? stage;
  @override
  final _i2.BuiltMap<String, ThrottleSettings>? throttle;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, apiId.hashCode);
    _$hash = $jc(_$hash, stage.hashCode);
    _$hash = $jc(_$hash, throttle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

  _i2.MapBuilder<String, ThrottleSettings>? _throttle;
  _i2.MapBuilder<String, ThrottleSettings> get throttle =>
      _$this._throttle ??= new _i2.MapBuilder<String, ThrottleSettings>();
  set throttle(_i2.MapBuilder<String, ThrottleSettings>? throttle) =>
      _$this._throttle = throttle;

  ApiStageBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

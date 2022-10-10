// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.base_path_mapping;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BasePathMapping extends BasePathMapping {
  @override
  final String? basePath;
  @override
  final String? restApiId;
  @override
  final String? stage;

  factory _$BasePathMapping([void Function(BasePathMappingBuilder)? updates]) =>
      (new BasePathMappingBuilder()..update(updates))._build();

  _$BasePathMapping._({this.basePath, this.restApiId, this.stage}) : super._();

  @override
  BasePathMapping rebuild(void Function(BasePathMappingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BasePathMappingBuilder toBuilder() =>
      new BasePathMappingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BasePathMapping &&
        basePath == other.basePath &&
        restApiId == other.restApiId &&
        stage == other.stage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, basePath.hashCode), restApiId.hashCode), stage.hashCode));
  }
}

class BasePathMappingBuilder
    implements Builder<BasePathMapping, BasePathMappingBuilder> {
  _$BasePathMapping? _$v;

  String? _basePath;
  String? get basePath => _$this._basePath;
  set basePath(String? basePath) => _$this._basePath = basePath;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _stage;
  String? get stage => _$this._stage;
  set stage(String? stage) => _$this._stage = stage;

  BasePathMappingBuilder() {
    BasePathMapping._init(this);
  }

  BasePathMappingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _basePath = $v.basePath;
      _restApiId = $v.restApiId;
      _stage = $v.stage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BasePathMapping other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BasePathMapping;
  }

  @override
  void update(void Function(BasePathMappingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BasePathMapping build() => _build();

  _$BasePathMapping _build() {
    final _$result = _$v ??
        new _$BasePathMapping._(
            basePath: basePath, restApiId: restApiId, stage: stage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

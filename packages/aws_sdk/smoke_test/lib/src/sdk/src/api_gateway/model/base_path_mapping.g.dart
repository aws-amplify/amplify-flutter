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
    var _$hash = 0;
    _$hash = $jc(_$hash, basePath.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, stage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

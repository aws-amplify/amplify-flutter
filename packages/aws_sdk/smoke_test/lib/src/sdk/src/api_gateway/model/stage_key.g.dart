// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.stage_key;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StageKey extends StageKey {
  @override
  final String? restApiId;
  @override
  final String? stageName;

  factory _$StageKey([void Function(StageKeyBuilder)? updates]) =>
      (new StageKeyBuilder()..update(updates))._build();

  _$StageKey._({this.restApiId, this.stageName}) : super._();

  @override
  StageKey rebuild(void Function(StageKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StageKeyBuilder toBuilder() => new StageKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StageKey &&
        restApiId == other.restApiId &&
        stageName == other.stageName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, stageName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StageKeyBuilder implements Builder<StageKey, StageKeyBuilder> {
  _$StageKey? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _stageName;
  String? get stageName => _$this._stageName;
  set stageName(String? stageName) => _$this._stageName = stageName;

  StageKeyBuilder() {
    StageKey._init(this);
  }

  StageKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _stageName = $v.stageName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StageKey other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StageKey;
  }

  @override
  void update(void Function(StageKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StageKey build() => _build();

  _$StageKey _build() {
    final _$result =
        _$v ?? new _$StageKey._(restApiId: restApiId, stageName: stageName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

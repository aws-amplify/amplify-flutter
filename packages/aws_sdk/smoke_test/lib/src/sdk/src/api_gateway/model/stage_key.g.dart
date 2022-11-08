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
    return $jf($jc($jc(0, restApiId.hashCode), stageName.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

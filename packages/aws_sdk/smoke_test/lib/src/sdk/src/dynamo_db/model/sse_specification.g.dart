// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.sse_specification;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SseSpecification extends SseSpecification {
  @override
  final bool? enabled;
  @override
  final String? kmsMasterKeyId;
  @override
  final _i2.SseType? sseType;

  factory _$SseSpecification(
          [void Function(SseSpecificationBuilder)? updates]) =>
      (new SseSpecificationBuilder()..update(updates))._build();

  _$SseSpecification._({this.enabled, this.kmsMasterKeyId, this.sseType})
      : super._();

  @override
  SseSpecification rebuild(void Function(SseSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SseSpecificationBuilder toBuilder() =>
      new SseSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SseSpecification &&
        enabled == other.enabled &&
        kmsMasterKeyId == other.kmsMasterKeyId &&
        sseType == other.sseType;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, enabled.hashCode), kmsMasterKeyId.hashCode),
        sseType.hashCode));
  }
}

class SseSpecificationBuilder
    implements Builder<SseSpecification, SseSpecificationBuilder> {
  _$SseSpecification? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _kmsMasterKeyId;
  String? get kmsMasterKeyId => _$this._kmsMasterKeyId;
  set kmsMasterKeyId(String? kmsMasterKeyId) =>
      _$this._kmsMasterKeyId = kmsMasterKeyId;

  _i2.SseType? _sseType;
  _i2.SseType? get sseType => _$this._sseType;
  set sseType(_i2.SseType? sseType) => _$this._sseType = sseType;

  SseSpecificationBuilder() {
    SseSpecification._init(this);
  }

  SseSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _kmsMasterKeyId = $v.kmsMasterKeyId;
      _sseType = $v.sseType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SseSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SseSpecification;
  }

  @override
  void update(void Function(SseSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SseSpecification build() => _build();

  _$SseSpecification _build() {
    final _$result = _$v ??
        new _$SseSpecification._(
            enabled: enabled, kmsMasterKeyId: kmsMasterKeyId, sseType: sseType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

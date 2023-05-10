// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.sse_specification;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SseSpecification extends SseSpecification {
  @override
  final bool? enabled;
  @override
  final _i2.SseType? sseType;
  @override
  final String? kmsMasterKeyId;

  factory _$SseSpecification(
          [void Function(SseSpecificationBuilder)? updates]) =>
      (new SseSpecificationBuilder()..update(updates))._build();

  _$SseSpecification._({this.enabled, this.sseType, this.kmsMasterKeyId})
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
        sseType == other.sseType &&
        kmsMasterKeyId == other.kmsMasterKeyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, sseType.hashCode);
    _$hash = $jc(_$hash, kmsMasterKeyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SseSpecificationBuilder
    implements Builder<SseSpecification, SseSpecificationBuilder> {
  _$SseSpecification? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  _i2.SseType? _sseType;
  _i2.SseType? get sseType => _$this._sseType;
  set sseType(_i2.SseType? sseType) => _$this._sseType = sseType;

  String? _kmsMasterKeyId;
  String? get kmsMasterKeyId => _$this._kmsMasterKeyId;
  set kmsMasterKeyId(String? kmsMasterKeyId) =>
      _$this._kmsMasterKeyId = kmsMasterKeyId;

  SseSpecificationBuilder() {
    SseSpecification._init(this);
  }

  SseSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _sseType = $v.sseType;
      _kmsMasterKeyId = $v.kmsMasterKeyId;
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
            enabled: enabled, sseType: sseType, kmsMasterKeyId: kmsMasterKeyId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

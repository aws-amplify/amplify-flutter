// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.object_part;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectPart extends ObjectPart {
  @override
  final String? checksumCrc32;
  @override
  final String? checksumCrc32C;
  @override
  final String? checksumSha1;
  @override
  final String? checksumSha256;
  @override
  final int? partNumber;
  @override
  final _i2.Int64? size;

  factory _$ObjectPart([void Function(ObjectPartBuilder)? updates]) =>
      (new ObjectPartBuilder()..update(updates))._build();

  _$ObjectPart._(
      {this.checksumCrc32,
      this.checksumCrc32C,
      this.checksumSha1,
      this.checksumSha256,
      this.partNumber,
      this.size})
      : super._();

  @override
  ObjectPart rebuild(void Function(ObjectPartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectPartBuilder toBuilder() => new ObjectPartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectPart &&
        checksumCrc32 == other.checksumCrc32 &&
        checksumCrc32C == other.checksumCrc32C &&
        checksumSha1 == other.checksumSha1 &&
        checksumSha256 == other.checksumSha256 &&
        partNumber == other.partNumber &&
        size == other.size;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, checksumCrc32.hashCode),
                        checksumCrc32C.hashCode),
                    checksumSha1.hashCode),
                checksumSha256.hashCode),
            partNumber.hashCode),
        size.hashCode));
  }
}

class ObjectPartBuilder implements Builder<ObjectPart, ObjectPartBuilder> {
  _$ObjectPart? _$v;

  String? _checksumCrc32;
  String? get checksumCrc32 => _$this._checksumCrc32;
  set checksumCrc32(String? checksumCrc32) =>
      _$this._checksumCrc32 = checksumCrc32;

  String? _checksumCrc32C;
  String? get checksumCrc32C => _$this._checksumCrc32C;
  set checksumCrc32C(String? checksumCrc32C) =>
      _$this._checksumCrc32C = checksumCrc32C;

  String? _checksumSha1;
  String? get checksumSha1 => _$this._checksumSha1;
  set checksumSha1(String? checksumSha1) => _$this._checksumSha1 = checksumSha1;

  String? _checksumSha256;
  String? get checksumSha256 => _$this._checksumSha256;
  set checksumSha256(String? checksumSha256) =>
      _$this._checksumSha256 = checksumSha256;

  int? _partNumber;
  int? get partNumber => _$this._partNumber;
  set partNumber(int? partNumber) => _$this._partNumber = partNumber;

  _i2.Int64? _size;
  _i2.Int64? get size => _$this._size;
  set size(_i2.Int64? size) => _$this._size = size;

  ObjectPartBuilder() {
    ObjectPart._init(this);
  }

  ObjectPartBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checksumCrc32 = $v.checksumCrc32;
      _checksumCrc32C = $v.checksumCrc32C;
      _checksumSha1 = $v.checksumSha1;
      _checksumSha256 = $v.checksumSha256;
      _partNumber = $v.partNumber;
      _size = $v.size;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectPart other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ObjectPart;
  }

  @override
  void update(void Function(ObjectPartBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectPart build() => _build();

  _$ObjectPart _build() {
    final _$result = _$v ??
        new _$ObjectPart._(
            checksumCrc32: checksumCrc32,
            checksumCrc32C: checksumCrc32C,
            checksumSha1: checksumSha1,
            checksumSha256: checksumSha256,
            partNumber: partNumber,
            size: size);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

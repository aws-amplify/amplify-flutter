// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.bucket;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Bucket extends Bucket {
  @override
  final DateTime? creationDate;
  @override
  final String? name;

  factory _$Bucket([void Function(BucketBuilder)? updates]) =>
      (new BucketBuilder()..update(updates))._build();

  _$Bucket._({this.creationDate, this.name}) : super._();

  @override
  Bucket rebuild(void Function(BucketBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BucketBuilder toBuilder() => new BucketBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Bucket &&
        creationDate == other.creationDate &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, creationDate.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BucketBuilder implements Builder<Bucket, BucketBuilder> {
  _$Bucket? _$v;

  DateTime? _creationDate;
  DateTime? get creationDate => _$this._creationDate;
  set creationDate(DateTime? creationDate) =>
      _$this._creationDate = creationDate;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  BucketBuilder() {
    Bucket._init(this);
  }

  BucketBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _creationDate = $v.creationDate;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Bucket other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Bucket;
  }

  @override
  void update(void Function(BucketBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Bucket build() => _build();

  _$Bucket _build() {
    final _$result =
        _$v ?? new _$Bucket._(creationDate: creationDate, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bucket.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Bucket extends Bucket {
  @override
  final String? name;
  @override
  final DateTime? creationDate;

  factory _$Bucket([void Function(BucketBuilder)? updates]) =>
      (new BucketBuilder()..update(updates))._build();

  _$Bucket._({this.name, this.creationDate}) : super._();

  @override
  Bucket rebuild(void Function(BucketBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BucketBuilder toBuilder() => new BucketBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Bucket &&
        name == other.name &&
        creationDate == other.creationDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, creationDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BucketBuilder implements Builder<Bucket, BucketBuilder> {
  _$Bucket? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _creationDate;
  DateTime? get creationDate => _$this._creationDate;
  set creationDate(DateTime? creationDate) =>
      _$this._creationDate = creationDate;

  BucketBuilder();

  BucketBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _creationDate = $v.creationDate;
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
        _$v ?? new _$Bucket._(name: name, creationDate: creationDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

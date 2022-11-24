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
    return $jf($jc($jc(0, creationDate.hashCode), name.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.list_buckets_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListBucketsOutput extends ListBucketsOutput {
  @override
  final _i4.BuiltList<_i2.Bucket>? buckets;
  @override
  final _i3.Owner? owner;

  factory _$ListBucketsOutput(
          [void Function(ListBucketsOutputBuilder)? updates]) =>
      (new ListBucketsOutputBuilder()..update(updates))._build();

  _$ListBucketsOutput._({this.buckets, this.owner}) : super._();

  @override
  ListBucketsOutput rebuild(void Function(ListBucketsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListBucketsOutputBuilder toBuilder() =>
      new ListBucketsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListBucketsOutput &&
        buckets == other.buckets &&
        owner == other.owner;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, buckets.hashCode), owner.hashCode));
  }
}

class ListBucketsOutputBuilder
    implements Builder<ListBucketsOutput, ListBucketsOutputBuilder> {
  _$ListBucketsOutput? _$v;

  _i4.ListBuilder<_i2.Bucket>? _buckets;
  _i4.ListBuilder<_i2.Bucket> get buckets =>
      _$this._buckets ??= new _i4.ListBuilder<_i2.Bucket>();
  set buckets(_i4.ListBuilder<_i2.Bucket>? buckets) =>
      _$this._buckets = buckets;

  _i3.OwnerBuilder? _owner;
  _i3.OwnerBuilder get owner => _$this._owner ??= new _i3.OwnerBuilder();
  set owner(_i3.OwnerBuilder? owner) => _$this._owner = owner;

  ListBucketsOutputBuilder() {
    ListBucketsOutput._init(this);
  }

  ListBucketsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _buckets = $v.buckets?.toBuilder();
      _owner = $v.owner?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListBucketsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListBucketsOutput;
  }

  @override
  void update(void Function(ListBucketsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListBucketsOutput build() => _build();

  _$ListBucketsOutput _build() {
    _$ListBucketsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListBucketsOutput._(
              buckets: _buckets?.build(), owner: _owner?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'buckets';
        _buckets?.build();
        _$failedField = 'owner';
        _owner?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListBucketsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

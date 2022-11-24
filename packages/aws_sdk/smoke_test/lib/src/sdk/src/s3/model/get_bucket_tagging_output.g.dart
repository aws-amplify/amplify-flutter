// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_tagging_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketTaggingOutput extends GetBucketTaggingOutput {
  @override
  final _i3.BuiltList<_i2.Tag> tagSet;

  factory _$GetBucketTaggingOutput(
          [void Function(GetBucketTaggingOutputBuilder)? updates]) =>
      (new GetBucketTaggingOutputBuilder()..update(updates))._build();

  _$GetBucketTaggingOutput._({required this.tagSet}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tagSet, r'GetBucketTaggingOutput', 'tagSet');
  }

  @override
  GetBucketTaggingOutput rebuild(
          void Function(GetBucketTaggingOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketTaggingOutputBuilder toBuilder() =>
      new GetBucketTaggingOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketTaggingOutput && tagSet == other.tagSet;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tagSet.hashCode));
  }
}

class GetBucketTaggingOutputBuilder
    implements Builder<GetBucketTaggingOutput, GetBucketTaggingOutputBuilder> {
  _$GetBucketTaggingOutput? _$v;

  _i3.ListBuilder<_i2.Tag>? _tagSet;
  _i3.ListBuilder<_i2.Tag> get tagSet =>
      _$this._tagSet ??= new _i3.ListBuilder<_i2.Tag>();
  set tagSet(_i3.ListBuilder<_i2.Tag>? tagSet) => _$this._tagSet = tagSet;

  GetBucketTaggingOutputBuilder() {
    GetBucketTaggingOutput._init(this);
  }

  GetBucketTaggingOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tagSet = $v.tagSet.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketTaggingOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketTaggingOutput;
  }

  @override
  void update(void Function(GetBucketTaggingOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketTaggingOutput build() => _build();

  _$GetBucketTaggingOutput _build() {
    _$GetBucketTaggingOutput _$result;
    try {
      _$result = _$v ?? new _$GetBucketTaggingOutput._(tagSet: tagSet.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSet';
        tagSet.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetBucketTaggingOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

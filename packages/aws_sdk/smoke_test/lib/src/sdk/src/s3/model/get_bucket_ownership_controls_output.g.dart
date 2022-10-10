// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_ownership_controls_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketOwnershipControlsOutput
    extends GetBucketOwnershipControlsOutput {
  @override
  final _i3.OwnershipControls? ownershipControls;

  factory _$GetBucketOwnershipControlsOutput(
          [void Function(GetBucketOwnershipControlsOutputBuilder)? updates]) =>
      (new GetBucketOwnershipControlsOutputBuilder()..update(updates))._build();

  _$GetBucketOwnershipControlsOutput._({this.ownershipControls}) : super._();

  @override
  GetBucketOwnershipControlsOutput rebuild(
          void Function(GetBucketOwnershipControlsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketOwnershipControlsOutputBuilder toBuilder() =>
      new GetBucketOwnershipControlsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketOwnershipControlsOutput &&
        ownershipControls == other.ownershipControls;
  }

  @override
  int get hashCode {
    return $jf($jc(0, ownershipControls.hashCode));
  }
}

class GetBucketOwnershipControlsOutputBuilder
    implements
        Builder<GetBucketOwnershipControlsOutput,
            GetBucketOwnershipControlsOutputBuilder> {
  _$GetBucketOwnershipControlsOutput? _$v;

  _i3.OwnershipControlsBuilder? _ownershipControls;
  _i3.OwnershipControlsBuilder get ownershipControls =>
      _$this._ownershipControls ??= new _i3.OwnershipControlsBuilder();
  set ownershipControls(_i3.OwnershipControlsBuilder? ownershipControls) =>
      _$this._ownershipControls = ownershipControls;

  GetBucketOwnershipControlsOutputBuilder() {
    GetBucketOwnershipControlsOutput._init(this);
  }

  GetBucketOwnershipControlsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownershipControls = $v.ownershipControls?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketOwnershipControlsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketOwnershipControlsOutput;
  }

  @override
  void update(void Function(GetBucketOwnershipControlsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketOwnershipControlsOutput build() => _build();

  _$GetBucketOwnershipControlsOutput _build() {
    _$GetBucketOwnershipControlsOutput _$result;
    try {
      _$result = _$v ??
          new _$GetBucketOwnershipControlsOutput._(
              ownershipControls: _ownershipControls?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ownershipControls';
        _ownershipControls?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetBucketOwnershipControlsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

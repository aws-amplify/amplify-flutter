// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_acl_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketAclOutput extends GetBucketAclOutput {
  @override
  final _i4.BuiltList<_i2.Grant>? grants;
  @override
  final _i3.Owner? owner;

  factory _$GetBucketAclOutput(
          [void Function(GetBucketAclOutputBuilder)? updates]) =>
      (new GetBucketAclOutputBuilder()..update(updates))._build();

  _$GetBucketAclOutput._({this.grants, this.owner}) : super._();

  @override
  GetBucketAclOutput rebuild(
          void Function(GetBucketAclOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketAclOutputBuilder toBuilder() =>
      new GetBucketAclOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketAclOutput &&
        grants == other.grants &&
        owner == other.owner;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, grants.hashCode), owner.hashCode));
  }
}

class GetBucketAclOutputBuilder
    implements Builder<GetBucketAclOutput, GetBucketAclOutputBuilder> {
  _$GetBucketAclOutput? _$v;

  _i4.ListBuilder<_i2.Grant>? _grants;
  _i4.ListBuilder<_i2.Grant> get grants =>
      _$this._grants ??= new _i4.ListBuilder<_i2.Grant>();
  set grants(_i4.ListBuilder<_i2.Grant>? grants) => _$this._grants = grants;

  _i3.OwnerBuilder? _owner;
  _i3.OwnerBuilder get owner => _$this._owner ??= new _i3.OwnerBuilder();
  set owner(_i3.OwnerBuilder? owner) => _$this._owner = owner;

  GetBucketAclOutputBuilder() {
    GetBucketAclOutput._init(this);
  }

  GetBucketAclOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _grants = $v.grants?.toBuilder();
      _owner = $v.owner?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketAclOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketAclOutput;
  }

  @override
  void update(void Function(GetBucketAclOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketAclOutput build() => _build();

  _$GetBucketAclOutput _build() {
    _$GetBucketAclOutput _$result;
    try {
      _$result = _$v ??
          new _$GetBucketAclOutput._(
              grants: _grants?.build(), owner: _owner?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'grants';
        _grants?.build();
        _$failedField = 'owner';
        _owner?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetBucketAclOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

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
    var _$hash = 0;
    _$hash = $jc(_$hash, grants.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

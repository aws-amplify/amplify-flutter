// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_bucket_acl_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketAclOutput extends GetBucketAclOutput {
  @override
  final Owner? owner;
  @override
  final _i2.BuiltList<Grant>? grants;

  factory _$GetBucketAclOutput(
          [void Function(GetBucketAclOutputBuilder)? updates]) =>
      (new GetBucketAclOutputBuilder()..update(updates))._build();

  _$GetBucketAclOutput._({this.owner, this.grants}) : super._();

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
        owner == other.owner &&
        grants == other.grants;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, grants.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBucketAclOutputBuilder
    implements Builder<GetBucketAclOutput, GetBucketAclOutputBuilder> {
  _$GetBucketAclOutput? _$v;

  OwnerBuilder? _owner;
  OwnerBuilder get owner => _$this._owner ??= new OwnerBuilder();
  set owner(OwnerBuilder? owner) => _$this._owner = owner;

  _i2.ListBuilder<Grant>? _grants;
  _i2.ListBuilder<Grant> get grants =>
      _$this._grants ??= new _i2.ListBuilder<Grant>();
  set grants(_i2.ListBuilder<Grant>? grants) => _$this._grants = grants;

  GetBucketAclOutputBuilder();

  GetBucketAclOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner?.toBuilder();
      _grants = $v.grants?.toBuilder();
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
              owner: _owner?.build(), grants: _grants?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'owner';
        _owner?.build();
        _$failedField = 'grants';
        _grants?.build();
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

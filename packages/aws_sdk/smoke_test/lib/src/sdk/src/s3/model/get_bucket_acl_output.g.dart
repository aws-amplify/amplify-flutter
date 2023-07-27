// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_bucket_acl_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketAclOutput extends GetBucketAclOutput {
  @override
  final _i2.Owner? owner;
  @override
  final _i4.BuiltList<_i3.Grant>? grants;

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

  _i2.OwnerBuilder? _owner;
  _i2.OwnerBuilder get owner => _$this._owner ??= new _i2.OwnerBuilder();
  set owner(_i2.OwnerBuilder? owner) => _$this._owner = owner;

  _i4.ListBuilder<_i3.Grant>? _grants;
  _i4.ListBuilder<_i3.Grant> get grants =>
      _$this._grants ??= new _i4.ListBuilder<_i3.Grant>();
  set grants(_i4.ListBuilder<_i3.Grant>? grants) => _$this._grants = grants;

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

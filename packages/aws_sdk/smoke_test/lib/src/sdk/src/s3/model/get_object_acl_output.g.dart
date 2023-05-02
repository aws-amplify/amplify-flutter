// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_acl_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectAclOutput extends GetObjectAclOutput {
  @override
  final _i3.Owner? owner;
  @override
  final _i6.BuiltList<_i4.Grant>? grants;
  @override
  final _i5.RequestCharged? requestCharged;

  factory _$GetObjectAclOutput(
          [void Function(GetObjectAclOutputBuilder)? updates]) =>
      (new GetObjectAclOutputBuilder()..update(updates))._build();

  _$GetObjectAclOutput._({this.owner, this.grants, this.requestCharged})
      : super._();

  @override
  GetObjectAclOutput rebuild(
          void Function(GetObjectAclOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectAclOutputBuilder toBuilder() =>
      new GetObjectAclOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectAclOutput &&
        owner == other.owner &&
        grants == other.grants &&
        requestCharged == other.requestCharged;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, grants.hashCode);
    _$hash = $jc(_$hash, requestCharged.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetObjectAclOutputBuilder
    implements Builder<GetObjectAclOutput, GetObjectAclOutputBuilder> {
  _$GetObjectAclOutput? _$v;

  _i3.OwnerBuilder? _owner;
  _i3.OwnerBuilder get owner => _$this._owner ??= new _i3.OwnerBuilder();
  set owner(_i3.OwnerBuilder? owner) => _$this._owner = owner;

  _i6.ListBuilder<_i4.Grant>? _grants;
  _i6.ListBuilder<_i4.Grant> get grants =>
      _$this._grants ??= new _i6.ListBuilder<_i4.Grant>();
  set grants(_i6.ListBuilder<_i4.Grant>? grants) => _$this._grants = grants;

  _i5.RequestCharged? _requestCharged;
  _i5.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i5.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  GetObjectAclOutputBuilder() {
    GetObjectAclOutput._init(this);
  }

  GetObjectAclOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner?.toBuilder();
      _grants = $v.grants?.toBuilder();
      _requestCharged = $v.requestCharged;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectAclOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectAclOutput;
  }

  @override
  void update(void Function(GetObjectAclOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectAclOutput build() => _build();

  _$GetObjectAclOutput _build() {
    _$GetObjectAclOutput _$result;
    try {
      _$result = _$v ??
          new _$GetObjectAclOutput._(
              owner: _owner?.build(),
              grants: _grants?.build(),
              requestCharged: requestCharged);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'owner';
        _owner?.build();
        _$failedField = 'grants';
        _grants?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetObjectAclOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetObjectAclOutputPayload extends GetObjectAclOutputPayload {
  @override
  final _i6.BuiltList<_i4.Grant>? grants;
  @override
  final _i3.Owner? owner;

  factory _$GetObjectAclOutputPayload(
          [void Function(GetObjectAclOutputPayloadBuilder)? updates]) =>
      (new GetObjectAclOutputPayloadBuilder()..update(updates))._build();

  _$GetObjectAclOutputPayload._({this.grants, this.owner}) : super._();

  @override
  GetObjectAclOutputPayload rebuild(
          void Function(GetObjectAclOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectAclOutputPayloadBuilder toBuilder() =>
      new GetObjectAclOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectAclOutputPayload &&
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

class GetObjectAclOutputPayloadBuilder
    implements
        Builder<GetObjectAclOutputPayload, GetObjectAclOutputPayloadBuilder> {
  _$GetObjectAclOutputPayload? _$v;

  _i6.ListBuilder<_i4.Grant>? _grants;
  _i6.ListBuilder<_i4.Grant> get grants =>
      _$this._grants ??= new _i6.ListBuilder<_i4.Grant>();
  set grants(_i6.ListBuilder<_i4.Grant>? grants) => _$this._grants = grants;

  _i3.OwnerBuilder? _owner;
  _i3.OwnerBuilder get owner => _$this._owner ??= new _i3.OwnerBuilder();
  set owner(_i3.OwnerBuilder? owner) => _$this._owner = owner;

  GetObjectAclOutputPayloadBuilder() {
    GetObjectAclOutputPayload._init(this);
  }

  GetObjectAclOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _grants = $v.grants?.toBuilder();
      _owner = $v.owner?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectAclOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectAclOutputPayload;
  }

  @override
  void update(void Function(GetObjectAclOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectAclOutputPayload build() => _build();

  _$GetObjectAclOutputPayload _build() {
    _$GetObjectAclOutputPayload _$result;
    try {
      _$result = _$v ??
          new _$GetObjectAclOutputPayload._(
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
            r'GetObjectAclOutputPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

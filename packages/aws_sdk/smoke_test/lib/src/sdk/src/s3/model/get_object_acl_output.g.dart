// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_acl_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectAclOutput extends GetObjectAclOutput {
  @override
  final _i6.BuiltList<_i3.Grant>? grants;
  @override
  final _i4.Owner? owner;
  @override
  final _i5.RequestCharged? requestCharged;

  factory _$GetObjectAclOutput(
          [void Function(GetObjectAclOutputBuilder)? updates]) =>
      (new GetObjectAclOutputBuilder()..update(updates))._build();

  _$GetObjectAclOutput._({this.grants, this.owner, this.requestCharged})
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
        grants == other.grants &&
        owner == other.owner &&
        requestCharged == other.requestCharged;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, grants.hashCode), owner.hashCode), requestCharged.hashCode));
  }
}

class GetObjectAclOutputBuilder
    implements Builder<GetObjectAclOutput, GetObjectAclOutputBuilder> {
  _$GetObjectAclOutput? _$v;

  _i6.ListBuilder<_i3.Grant>? _grants;
  _i6.ListBuilder<_i3.Grant> get grants =>
      _$this._grants ??= new _i6.ListBuilder<_i3.Grant>();
  set grants(_i6.ListBuilder<_i3.Grant>? grants) => _$this._grants = grants;

  _i4.OwnerBuilder? _owner;
  _i4.OwnerBuilder get owner => _$this._owner ??= new _i4.OwnerBuilder();
  set owner(_i4.OwnerBuilder? owner) => _$this._owner = owner;

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
      _grants = $v.grants?.toBuilder();
      _owner = $v.owner?.toBuilder();
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
              grants: _grants?.build(),
              owner: _owner?.build(),
              requestCharged: requestCharged);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'grants';
        _grants?.build();
        _$failedField = 'owner';
        _owner?.build();
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
  final _i6.BuiltList<_i3.Grant>? grants;
  @override
  final _i4.Owner? owner;

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
    return $jf($jc($jc(0, grants.hashCode), owner.hashCode));
  }
}

class GetObjectAclOutputPayloadBuilder
    implements
        Builder<GetObjectAclOutputPayload, GetObjectAclOutputPayloadBuilder> {
  _$GetObjectAclOutputPayload? _$v;

  _i6.ListBuilder<_i3.Grant>? _grants;
  _i6.ListBuilder<_i3.Grant> get grants =>
      _$this._grants ??= new _i6.ListBuilder<_i3.Grant>();
  set grants(_i6.ListBuilder<_i3.Grant>? grants) => _$this._grants = grants;

  _i4.OwnerBuilder? _owner;
  _i4.OwnerBuilder get owner => _$this._owner ??= new _i4.OwnerBuilder();
  set owner(_i4.OwnerBuilder? owner) => _$this._owner = owner;

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

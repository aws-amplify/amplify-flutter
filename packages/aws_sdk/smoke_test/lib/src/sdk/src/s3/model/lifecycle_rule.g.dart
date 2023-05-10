// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.lifecycle_rule;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LifecycleRule extends LifecycleRule {
  @override
  final _i2.LifecycleExpiration? expiration;
  @override
  final String? id;
  @override
  final String? prefix;
  @override
  final _i3.LifecycleRuleFilter? filter;
  @override
  final _i4.ExpirationStatus status;
  @override
  final _i9.BuiltList<_i5.Transition>? transitions;
  @override
  final _i9.BuiltList<_i6.NoncurrentVersionTransition>?
      noncurrentVersionTransitions;
  @override
  final _i7.NoncurrentVersionExpiration? noncurrentVersionExpiration;
  @override
  final _i8.AbortIncompleteMultipartUpload? abortIncompleteMultipartUpload;

  factory _$LifecycleRule([void Function(LifecycleRuleBuilder)? updates]) =>
      (new LifecycleRuleBuilder()..update(updates))._build();

  _$LifecycleRule._(
      {this.expiration,
      this.id,
      this.prefix,
      this.filter,
      required this.status,
      this.transitions,
      this.noncurrentVersionTransitions,
      this.noncurrentVersionExpiration,
      this.abortIncompleteMultipartUpload})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(status, r'LifecycleRule', 'status');
  }

  @override
  LifecycleRule rebuild(void Function(LifecycleRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LifecycleRuleBuilder toBuilder() => new LifecycleRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LifecycleRule &&
        expiration == other.expiration &&
        id == other.id &&
        prefix == other.prefix &&
        filter == other.filter &&
        status == other.status &&
        transitions == other.transitions &&
        noncurrentVersionTransitions == other.noncurrentVersionTransitions &&
        noncurrentVersionExpiration == other.noncurrentVersionExpiration &&
        abortIncompleteMultipartUpload == other.abortIncompleteMultipartUpload;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expiration.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, transitions.hashCode);
    _$hash = $jc(_$hash, noncurrentVersionTransitions.hashCode);
    _$hash = $jc(_$hash, noncurrentVersionExpiration.hashCode);
    _$hash = $jc(_$hash, abortIncompleteMultipartUpload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LifecycleRuleBuilder
    implements Builder<LifecycleRule, LifecycleRuleBuilder> {
  _$LifecycleRule? _$v;

  _i2.LifecycleExpirationBuilder? _expiration;
  _i2.LifecycleExpirationBuilder get expiration =>
      _$this._expiration ??= new _i2.LifecycleExpirationBuilder();
  set expiration(_i2.LifecycleExpirationBuilder? expiration) =>
      _$this._expiration = expiration;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  _i3.LifecycleRuleFilter? _filter;
  _i3.LifecycleRuleFilter? get filter => _$this._filter;
  set filter(_i3.LifecycleRuleFilter? filter) => _$this._filter = filter;

  _i4.ExpirationStatus? _status;
  _i4.ExpirationStatus? get status => _$this._status;
  set status(_i4.ExpirationStatus? status) => _$this._status = status;

  _i9.ListBuilder<_i5.Transition>? _transitions;
  _i9.ListBuilder<_i5.Transition> get transitions =>
      _$this._transitions ??= new _i9.ListBuilder<_i5.Transition>();
  set transitions(_i9.ListBuilder<_i5.Transition>? transitions) =>
      _$this._transitions = transitions;

  _i9.ListBuilder<_i6.NoncurrentVersionTransition>?
      _noncurrentVersionTransitions;
  _i9.ListBuilder<_i6.NoncurrentVersionTransition>
      get noncurrentVersionTransitions =>
          _$this._noncurrentVersionTransitions ??=
              new _i9.ListBuilder<_i6.NoncurrentVersionTransition>();
  set noncurrentVersionTransitions(
          _i9.ListBuilder<_i6.NoncurrentVersionTransition>?
              noncurrentVersionTransitions) =>
      _$this._noncurrentVersionTransitions = noncurrentVersionTransitions;

  _i7.NoncurrentVersionExpirationBuilder? _noncurrentVersionExpiration;
  _i7.NoncurrentVersionExpirationBuilder get noncurrentVersionExpiration =>
      _$this._noncurrentVersionExpiration ??=
          new _i7.NoncurrentVersionExpirationBuilder();
  set noncurrentVersionExpiration(
          _i7.NoncurrentVersionExpirationBuilder?
              noncurrentVersionExpiration) =>
      _$this._noncurrentVersionExpiration = noncurrentVersionExpiration;

  _i8.AbortIncompleteMultipartUploadBuilder? _abortIncompleteMultipartUpload;
  _i8.AbortIncompleteMultipartUploadBuilder
      get abortIncompleteMultipartUpload =>
          _$this._abortIncompleteMultipartUpload ??=
              new _i8.AbortIncompleteMultipartUploadBuilder();
  set abortIncompleteMultipartUpload(
          _i8.AbortIncompleteMultipartUploadBuilder?
              abortIncompleteMultipartUpload) =>
      _$this._abortIncompleteMultipartUpload = abortIncompleteMultipartUpload;

  LifecycleRuleBuilder() {
    LifecycleRule._init(this);
  }

  LifecycleRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expiration = $v.expiration?.toBuilder();
      _id = $v.id;
      _prefix = $v.prefix;
      _filter = $v.filter;
      _status = $v.status;
      _transitions = $v.transitions?.toBuilder();
      _noncurrentVersionTransitions =
          $v.noncurrentVersionTransitions?.toBuilder();
      _noncurrentVersionExpiration =
          $v.noncurrentVersionExpiration?.toBuilder();
      _abortIncompleteMultipartUpload =
          $v.abortIncompleteMultipartUpload?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LifecycleRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LifecycleRule;
  }

  @override
  void update(void Function(LifecycleRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LifecycleRule build() => _build();

  _$LifecycleRule _build() {
    _$LifecycleRule _$result;
    try {
      _$result = _$v ??
          new _$LifecycleRule._(
              expiration: _expiration?.build(),
              id: id,
              prefix: prefix,
              filter: filter,
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'LifecycleRule', 'status'),
              transitions: _transitions?.build(),
              noncurrentVersionTransitions:
                  _noncurrentVersionTransitions?.build(),
              noncurrentVersionExpiration:
                  _noncurrentVersionExpiration?.build(),
              abortIncompleteMultipartUpload:
                  _abortIncompleteMultipartUpload?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'expiration';
        _expiration?.build();

        _$failedField = 'transitions';
        _transitions?.build();
        _$failedField = 'noncurrentVersionTransitions';
        _noncurrentVersionTransitions?.build();
        _$failedField = 'noncurrentVersionExpiration';
        _noncurrentVersionExpiration?.build();
        _$failedField = 'abortIncompleteMultipartUpload';
        _abortIncompleteMultipartUpload?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LifecycleRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

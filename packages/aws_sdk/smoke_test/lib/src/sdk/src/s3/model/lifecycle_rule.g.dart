// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.lifecycle_rule;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LifecycleRule extends LifecycleRule {
  @override
  final _i2.AbortIncompleteMultipartUpload? abortIncompleteMultipartUpload;
  @override
  final _i3.LifecycleExpiration? expiration;
  @override
  final _i4.LifecycleRuleFilter? filter;
  @override
  final String? id;
  @override
  final _i5.NoncurrentVersionExpiration? noncurrentVersionExpiration;
  @override
  final _i9.BuiltList<_i6.NoncurrentVersionTransition>?
      noncurrentVersionTransitions;
  @override
  final String? prefix;
  @override
  final _i7.ExpirationStatus status;
  @override
  final _i9.BuiltList<_i8.Transition>? transitions;

  factory _$LifecycleRule([void Function(LifecycleRuleBuilder)? updates]) =>
      (new LifecycleRuleBuilder()..update(updates))._build();

  _$LifecycleRule._(
      {this.abortIncompleteMultipartUpload,
      this.expiration,
      this.filter,
      this.id,
      this.noncurrentVersionExpiration,
      this.noncurrentVersionTransitions,
      this.prefix,
      required this.status,
      this.transitions})
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
        abortIncompleteMultipartUpload ==
            other.abortIncompleteMultipartUpload &&
        expiration == other.expiration &&
        filter == other.filter &&
        id == other.id &&
        noncurrentVersionExpiration == other.noncurrentVersionExpiration &&
        noncurrentVersionTransitions == other.noncurrentVersionTransitions &&
        prefix == other.prefix &&
        status == other.status &&
        transitions == other.transitions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        0,
                                        abortIncompleteMultipartUpload
                                            .hashCode),
                                    expiration.hashCode),
                                filter.hashCode),
                            id.hashCode),
                        noncurrentVersionExpiration.hashCode),
                    noncurrentVersionTransitions.hashCode),
                prefix.hashCode),
            status.hashCode),
        transitions.hashCode));
  }
}

class LifecycleRuleBuilder
    implements Builder<LifecycleRule, LifecycleRuleBuilder> {
  _$LifecycleRule? _$v;

  _i2.AbortIncompleteMultipartUploadBuilder? _abortIncompleteMultipartUpload;
  _i2.AbortIncompleteMultipartUploadBuilder
      get abortIncompleteMultipartUpload =>
          _$this._abortIncompleteMultipartUpload ??=
              new _i2.AbortIncompleteMultipartUploadBuilder();
  set abortIncompleteMultipartUpload(
          _i2.AbortIncompleteMultipartUploadBuilder?
              abortIncompleteMultipartUpload) =>
      _$this._abortIncompleteMultipartUpload = abortIncompleteMultipartUpload;

  _i3.LifecycleExpirationBuilder? _expiration;
  _i3.LifecycleExpirationBuilder get expiration =>
      _$this._expiration ??= new _i3.LifecycleExpirationBuilder();
  set expiration(_i3.LifecycleExpirationBuilder? expiration) =>
      _$this._expiration = expiration;

  _i4.LifecycleRuleFilter? _filter;
  _i4.LifecycleRuleFilter? get filter => _$this._filter;
  set filter(_i4.LifecycleRuleFilter? filter) => _$this._filter = filter;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i5.NoncurrentVersionExpirationBuilder? _noncurrentVersionExpiration;
  _i5.NoncurrentVersionExpirationBuilder get noncurrentVersionExpiration =>
      _$this._noncurrentVersionExpiration ??=
          new _i5.NoncurrentVersionExpirationBuilder();
  set noncurrentVersionExpiration(
          _i5.NoncurrentVersionExpirationBuilder?
              noncurrentVersionExpiration) =>
      _$this._noncurrentVersionExpiration = noncurrentVersionExpiration;

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

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  _i7.ExpirationStatus? _status;
  _i7.ExpirationStatus? get status => _$this._status;
  set status(_i7.ExpirationStatus? status) => _$this._status = status;

  _i9.ListBuilder<_i8.Transition>? _transitions;
  _i9.ListBuilder<_i8.Transition> get transitions =>
      _$this._transitions ??= new _i9.ListBuilder<_i8.Transition>();
  set transitions(_i9.ListBuilder<_i8.Transition>? transitions) =>
      _$this._transitions = transitions;

  LifecycleRuleBuilder() {
    LifecycleRule._init(this);
  }

  LifecycleRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _abortIncompleteMultipartUpload =
          $v.abortIncompleteMultipartUpload?.toBuilder();
      _expiration = $v.expiration?.toBuilder();
      _filter = $v.filter;
      _id = $v.id;
      _noncurrentVersionExpiration =
          $v.noncurrentVersionExpiration?.toBuilder();
      _noncurrentVersionTransitions =
          $v.noncurrentVersionTransitions?.toBuilder();
      _prefix = $v.prefix;
      _status = $v.status;
      _transitions = $v.transitions?.toBuilder();
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
              abortIncompleteMultipartUpload:
                  _abortIncompleteMultipartUpload?.build(),
              expiration: _expiration?.build(),
              filter: filter,
              id: id,
              noncurrentVersionExpiration:
                  _noncurrentVersionExpiration?.build(),
              noncurrentVersionTransitions:
                  _noncurrentVersionTransitions?.build(),
              prefix: prefix,
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'LifecycleRule', 'status'),
              transitions: _transitions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'abortIncompleteMultipartUpload';
        _abortIncompleteMultipartUpload?.build();
        _$failedField = 'expiration';
        _expiration?.build();

        _$failedField = 'noncurrentVersionExpiration';
        _noncurrentVersionExpiration?.build();
        _$failedField = 'noncurrentVersionTransitions';
        _noncurrentVersionTransitions?.build();

        _$failedField = 'transitions';
        _transitions?.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

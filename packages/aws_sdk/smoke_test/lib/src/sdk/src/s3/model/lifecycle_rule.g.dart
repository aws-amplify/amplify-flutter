// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lifecycle_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LifecycleRule extends LifecycleRule {
  @override
  final LifecycleExpiration? expiration;
  @override
  final String? id;
  @override
  final String? prefix;
  @override
  final LifecycleRuleFilter? filter;
  @override
  final ExpirationStatus status;
  @override
  final _i2.BuiltList<Transition>? transitions;
  @override
  final _i2.BuiltList<NoncurrentVersionTransition>?
      noncurrentVersionTransitions;
  @override
  final NoncurrentVersionExpiration? noncurrentVersionExpiration;
  @override
  final AbortIncompleteMultipartUpload? abortIncompleteMultipartUpload;

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

  LifecycleExpirationBuilder? _expiration;
  LifecycleExpirationBuilder get expiration =>
      _$this._expiration ??= new LifecycleExpirationBuilder();
  set expiration(LifecycleExpirationBuilder? expiration) =>
      _$this._expiration = expiration;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  LifecycleRuleFilter? _filter;
  LifecycleRuleFilter? get filter => _$this._filter;
  set filter(LifecycleRuleFilter? filter) => _$this._filter = filter;

  ExpirationStatus? _status;
  ExpirationStatus? get status => _$this._status;
  set status(ExpirationStatus? status) => _$this._status = status;

  _i2.ListBuilder<Transition>? _transitions;
  _i2.ListBuilder<Transition> get transitions =>
      _$this._transitions ??= new _i2.ListBuilder<Transition>();
  set transitions(_i2.ListBuilder<Transition>? transitions) =>
      _$this._transitions = transitions;

  _i2.ListBuilder<NoncurrentVersionTransition>? _noncurrentVersionTransitions;
  _i2.ListBuilder<NoncurrentVersionTransition>
      get noncurrentVersionTransitions =>
          _$this._noncurrentVersionTransitions ??=
              new _i2.ListBuilder<NoncurrentVersionTransition>();
  set noncurrentVersionTransitions(
          _i2.ListBuilder<NoncurrentVersionTransition>?
              noncurrentVersionTransitions) =>
      _$this._noncurrentVersionTransitions = noncurrentVersionTransitions;

  NoncurrentVersionExpirationBuilder? _noncurrentVersionExpiration;
  NoncurrentVersionExpirationBuilder get noncurrentVersionExpiration =>
      _$this._noncurrentVersionExpiration ??=
          new NoncurrentVersionExpirationBuilder();
  set noncurrentVersionExpiration(
          NoncurrentVersionExpirationBuilder? noncurrentVersionExpiration) =>
      _$this._noncurrentVersionExpiration = noncurrentVersionExpiration;

  AbortIncompleteMultipartUploadBuilder? _abortIncompleteMultipartUpload;
  AbortIncompleteMultipartUploadBuilder get abortIncompleteMultipartUpload =>
      _$this._abortIncompleteMultipartUpload ??=
          new AbortIncompleteMultipartUploadBuilder();
  set abortIncompleteMultipartUpload(
          AbortIncompleteMultipartUploadBuilder?
              abortIncompleteMultipartUpload) =>
      _$this._abortIncompleteMultipartUpload = abortIncompleteMultipartUpload;

  LifecycleRuleBuilder();

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

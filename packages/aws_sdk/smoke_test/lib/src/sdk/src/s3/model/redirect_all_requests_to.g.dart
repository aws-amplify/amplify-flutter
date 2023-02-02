// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.redirect_all_requests_to;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RedirectAllRequestsTo extends RedirectAllRequestsTo {
  @override
  final String hostName;
  @override
  final _i2.Protocol? protocol;

  factory _$RedirectAllRequestsTo(
          [void Function(RedirectAllRequestsToBuilder)? updates]) =>
      (new RedirectAllRequestsToBuilder()..update(updates))._build();

  _$RedirectAllRequestsTo._({required this.hostName, this.protocol})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        hostName, r'RedirectAllRequestsTo', 'hostName');
  }

  @override
  RedirectAllRequestsTo rebuild(
          void Function(RedirectAllRequestsToBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RedirectAllRequestsToBuilder toBuilder() =>
      new RedirectAllRequestsToBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RedirectAllRequestsTo &&
        hostName == other.hostName &&
        protocol == other.protocol;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hostName.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RedirectAllRequestsToBuilder
    implements Builder<RedirectAllRequestsTo, RedirectAllRequestsToBuilder> {
  _$RedirectAllRequestsTo? _$v;

  String? _hostName;
  String? get hostName => _$this._hostName;
  set hostName(String? hostName) => _$this._hostName = hostName;

  _i2.Protocol? _protocol;
  _i2.Protocol? get protocol => _$this._protocol;
  set protocol(_i2.Protocol? protocol) => _$this._protocol = protocol;

  RedirectAllRequestsToBuilder() {
    RedirectAllRequestsTo._init(this);
  }

  RedirectAllRequestsToBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hostName = $v.hostName;
      _protocol = $v.protocol;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RedirectAllRequestsTo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RedirectAllRequestsTo;
  }

  @override
  void update(void Function(RedirectAllRequestsToBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RedirectAllRequestsTo build() => _build();

  _$RedirectAllRequestsTo _build() {
    final _$result = _$v ??
        new _$RedirectAllRequestsTo._(
            hostName: BuiltValueNullFieldError.checkNotNull(
                hostName, r'RedirectAllRequestsTo', 'hostName'),
            protocol: protocol);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

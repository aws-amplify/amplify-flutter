// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_gateway.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LocalGateway extends LocalGateway {
  @override
  final String? localGatewayId;
  @override
  final String? outpostArn;
  @override
  final String? ownerId;
  @override
  final String? state;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$LocalGateway([void Function(LocalGatewayBuilder)? updates]) =>
      (new LocalGatewayBuilder()..update(updates))._build();

  _$LocalGateway._(
      {this.localGatewayId,
      this.outpostArn,
      this.ownerId,
      this.state,
      this.tags})
      : super._();

  @override
  LocalGateway rebuild(void Function(LocalGatewayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalGatewayBuilder toBuilder() => new LocalGatewayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalGateway &&
        localGatewayId == other.localGatewayId &&
        outpostArn == other.outpostArn &&
        ownerId == other.ownerId &&
        state == other.state &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayId.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LocalGatewayBuilder
    implements Builder<LocalGateway, LocalGatewayBuilder> {
  _$LocalGateway? _$v;

  String? _localGatewayId;
  String? get localGatewayId => _$this._localGatewayId;
  set localGatewayId(String? localGatewayId) =>
      _$this._localGatewayId = localGatewayId;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  LocalGatewayBuilder();

  LocalGatewayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayId = $v.localGatewayId;
      _outpostArn = $v.outpostArn;
      _ownerId = $v.ownerId;
      _state = $v.state;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalGateway other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocalGateway;
  }

  @override
  void update(void Function(LocalGatewayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocalGateway build() => _build();

  _$LocalGateway _build() {
    _$LocalGateway _$result;
    try {
      _$result = _$v ??
          new _$LocalGateway._(
              localGatewayId: localGatewayId,
              outpostArn: outpostArn,
              ownerId: ownerId,
              state: state,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LocalGateway', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internet_gateway.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InternetGateway extends InternetGateway {
  @override
  final _i2.BuiltList<InternetGatewayAttachment>? attachments;
  @override
  final String? internetGatewayId;
  @override
  final String? ownerId;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$InternetGateway([void Function(InternetGatewayBuilder)? updates]) =>
      (new InternetGatewayBuilder()..update(updates))._build();

  _$InternetGateway._(
      {this.attachments, this.internetGatewayId, this.ownerId, this.tags})
      : super._();

  @override
  InternetGateway rebuild(void Function(InternetGatewayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InternetGatewayBuilder toBuilder() =>
      new InternetGatewayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InternetGateway &&
        attachments == other.attachments &&
        internetGatewayId == other.internetGatewayId &&
        ownerId == other.ownerId &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attachments.hashCode);
    _$hash = $jc(_$hash, internetGatewayId.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InternetGatewayBuilder
    implements Builder<InternetGateway, InternetGatewayBuilder> {
  _$InternetGateway? _$v;

  _i2.ListBuilder<InternetGatewayAttachment>? _attachments;
  _i2.ListBuilder<InternetGatewayAttachment> get attachments =>
      _$this._attachments ??= new _i2.ListBuilder<InternetGatewayAttachment>();
  set attachments(_i2.ListBuilder<InternetGatewayAttachment>? attachments) =>
      _$this._attachments = attachments;

  String? _internetGatewayId;
  String? get internetGatewayId => _$this._internetGatewayId;
  set internetGatewayId(String? internetGatewayId) =>
      _$this._internetGatewayId = internetGatewayId;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  InternetGatewayBuilder();

  InternetGatewayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attachments = $v.attachments?.toBuilder();
      _internetGatewayId = $v.internetGatewayId;
      _ownerId = $v.ownerId;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InternetGateway other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InternetGateway;
  }

  @override
  void update(void Function(InternetGatewayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InternetGateway build() => _build();

  _$InternetGateway _build() {
    _$InternetGateway _$result;
    try {
      _$result = _$v ??
          new _$InternetGateway._(
              attachments: _attachments?.build(),
              internetGatewayId: internetGatewayId,
              ownerId: ownerId,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attachments';
        _attachments?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InternetGateway', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

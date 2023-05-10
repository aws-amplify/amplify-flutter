// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.vpc_link;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpcLink extends VpcLink {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final _i3.BuiltList<String>? targetArns;
  @override
  final _i2.VpcLinkStatus? status;
  @override
  final String? statusMessage;
  @override
  final _i3.BuiltMap<String, String>? tags;

  factory _$VpcLink([void Function(VpcLinkBuilder)? updates]) =>
      (new VpcLinkBuilder()..update(updates))._build();

  _$VpcLink._(
      {this.id,
      this.name,
      this.description,
      this.targetArns,
      this.status,
      this.statusMessage,
      this.tags})
      : super._();

  @override
  VpcLink rebuild(void Function(VpcLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpcLinkBuilder toBuilder() => new VpcLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpcLink &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        targetArns == other.targetArns &&
        status == other.status &&
        statusMessage == other.statusMessage &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, targetArns.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusMessage.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VpcLinkBuilder implements Builder<VpcLink, VpcLinkBuilder> {
  _$VpcLink? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.ListBuilder<String>? _targetArns;
  _i3.ListBuilder<String> get targetArns =>
      _$this._targetArns ??= new _i3.ListBuilder<String>();
  set targetArns(_i3.ListBuilder<String>? targetArns) =>
      _$this._targetArns = targetArns;

  _i2.VpcLinkStatus? _status;
  _i2.VpcLinkStatus? get status => _$this._status;
  set status(_i2.VpcLinkStatus? status) => _$this._status = status;

  String? _statusMessage;
  String? get statusMessage => _$this._statusMessage;
  set statusMessage(String? statusMessage) =>
      _$this._statusMessage = statusMessage;

  _i3.MapBuilder<String, String>? _tags;
  _i3.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i3.MapBuilder<String, String>();
  set tags(_i3.MapBuilder<String, String>? tags) => _$this._tags = tags;

  VpcLinkBuilder() {
    VpcLink._init(this);
  }

  VpcLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _targetArns = $v.targetArns?.toBuilder();
      _status = $v.status;
      _statusMessage = $v.statusMessage;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpcLink other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpcLink;
  }

  @override
  void update(void Function(VpcLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpcLink build() => _build();

  _$VpcLink _build() {
    _$VpcLink _$result;
    try {
      _$result = _$v ??
          new _$VpcLink._(
              id: id,
              name: name,
              description: description,
              targetArns: _targetArns?.build(),
              status: status,
              statusMessage: statusMessage,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targetArns';
        _targetArns?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VpcLink', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

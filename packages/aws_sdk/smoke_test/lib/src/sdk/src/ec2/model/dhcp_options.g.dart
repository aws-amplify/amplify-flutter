// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dhcp_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DhcpOptions extends DhcpOptions {
  @override
  final _i2.BuiltList<DhcpConfiguration>? dhcpConfigurations;
  @override
  final String? dhcpOptionsId;
  @override
  final String? ownerId;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$DhcpOptions([void Function(DhcpOptionsBuilder)? updates]) =>
      (new DhcpOptionsBuilder()..update(updates))._build();

  _$DhcpOptions._(
      {this.dhcpConfigurations, this.dhcpOptionsId, this.ownerId, this.tags})
      : super._();

  @override
  DhcpOptions rebuild(void Function(DhcpOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DhcpOptionsBuilder toBuilder() => new DhcpOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DhcpOptions &&
        dhcpConfigurations == other.dhcpConfigurations &&
        dhcpOptionsId == other.dhcpOptionsId &&
        ownerId == other.ownerId &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dhcpConfigurations.hashCode);
    _$hash = $jc(_$hash, dhcpOptionsId.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DhcpOptionsBuilder implements Builder<DhcpOptions, DhcpOptionsBuilder> {
  _$DhcpOptions? _$v;

  _i2.ListBuilder<DhcpConfiguration>? _dhcpConfigurations;
  _i2.ListBuilder<DhcpConfiguration> get dhcpConfigurations =>
      _$this._dhcpConfigurations ??= new _i2.ListBuilder<DhcpConfiguration>();
  set dhcpConfigurations(
          _i2.ListBuilder<DhcpConfiguration>? dhcpConfigurations) =>
      _$this._dhcpConfigurations = dhcpConfigurations;

  String? _dhcpOptionsId;
  String? get dhcpOptionsId => _$this._dhcpOptionsId;
  set dhcpOptionsId(String? dhcpOptionsId) =>
      _$this._dhcpOptionsId = dhcpOptionsId;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  DhcpOptionsBuilder();

  DhcpOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dhcpConfigurations = $v.dhcpConfigurations?.toBuilder();
      _dhcpOptionsId = $v.dhcpOptionsId;
      _ownerId = $v.ownerId;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DhcpOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DhcpOptions;
  }

  @override
  void update(void Function(DhcpOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DhcpOptions build() => _build();

  _$DhcpOptions _build() {
    _$DhcpOptions _$result;
    try {
      _$result = _$v ??
          new _$DhcpOptions._(
              dhcpConfigurations: _dhcpConfigurations?.build(),
              dhcpOptionsId: dhcpOptionsId,
              ownerId: ownerId,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dhcpConfigurations';
        _dhcpConfigurations?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DhcpOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

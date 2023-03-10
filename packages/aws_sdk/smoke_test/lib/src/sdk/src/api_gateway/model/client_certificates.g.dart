// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.client_certificates;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientCertificates extends ClientCertificates {
  @override
  final _i3.BuiltList<_i2.ClientCertificate>? items;
  @override
  final String? position;

  factory _$ClientCertificates(
          [void Function(ClientCertificatesBuilder)? updates]) =>
      (new ClientCertificatesBuilder()..update(updates))._build();

  _$ClientCertificates._({this.items, this.position}) : super._();

  @override
  ClientCertificates rebuild(
          void Function(ClientCertificatesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientCertificatesBuilder toBuilder() =>
      new ClientCertificatesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientCertificates &&
        items == other.items &&
        position == other.position;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ClientCertificatesBuilder
    implements Builder<ClientCertificates, ClientCertificatesBuilder> {
  _$ClientCertificates? _$v;

  _i3.ListBuilder<_i2.ClientCertificate>? _items;
  _i3.ListBuilder<_i2.ClientCertificate> get items =>
      _$this._items ??= new _i3.ListBuilder<_i2.ClientCertificate>();
  set items(_i3.ListBuilder<_i2.ClientCertificate>? items) =>
      _$this._items = items;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  ClientCertificatesBuilder() {
    ClientCertificates._init(this);
  }

  ClientCertificatesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientCertificates other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientCertificates;
  }

  @override
  void update(void Function(ClientCertificatesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientCertificates build() => _build();

  _$ClientCertificates _build() {
    _$ClientCertificates _$result;
    try {
      _$result = _$v ??
          new _$ClientCertificates._(
              items: _items?.build(), position: position);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ClientCertificates', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

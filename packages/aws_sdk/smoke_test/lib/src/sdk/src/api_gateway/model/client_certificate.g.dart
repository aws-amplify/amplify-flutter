// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.client_certificate;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientCertificate extends ClientCertificate {
  @override
  final String? clientCertificateId;
  @override
  final DateTime? createdDate;
  @override
  final String? description;
  @override
  final DateTime? expirationDate;
  @override
  final String? pemEncodedCertificate;
  @override
  final _i2.BuiltMap<String, String>? tags;

  factory _$ClientCertificate(
          [void Function(ClientCertificateBuilder)? updates]) =>
      (new ClientCertificateBuilder()..update(updates))._build();

  _$ClientCertificate._(
      {this.clientCertificateId,
      this.createdDate,
      this.description,
      this.expirationDate,
      this.pemEncodedCertificate,
      this.tags})
      : super._();

  @override
  ClientCertificate rebuild(void Function(ClientCertificateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientCertificateBuilder toBuilder() =>
      new ClientCertificateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientCertificate &&
        clientCertificateId == other.clientCertificateId &&
        createdDate == other.createdDate &&
        description == other.description &&
        expirationDate == other.expirationDate &&
        pemEncodedCertificate == other.pemEncodedCertificate &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientCertificateId.hashCode);
    _$hash = $jc(_$hash, createdDate.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, expirationDate.hashCode);
    _$hash = $jc(_$hash, pemEncodedCertificate.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ClientCertificateBuilder
    implements Builder<ClientCertificate, ClientCertificateBuilder> {
  _$ClientCertificate? _$v;

  String? _clientCertificateId;
  String? get clientCertificateId => _$this._clientCertificateId;
  set clientCertificateId(String? clientCertificateId) =>
      _$this._clientCertificateId = clientCertificateId;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _expirationDate;
  DateTime? get expirationDate => _$this._expirationDate;
  set expirationDate(DateTime? expirationDate) =>
      _$this._expirationDate = expirationDate;

  String? _pemEncodedCertificate;
  String? get pemEncodedCertificate => _$this._pemEncodedCertificate;
  set pemEncodedCertificate(String? pemEncodedCertificate) =>
      _$this._pemEncodedCertificate = pemEncodedCertificate;

  _i2.MapBuilder<String, String>? _tags;
  _i2.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i2.MapBuilder<String, String>();
  set tags(_i2.MapBuilder<String, String>? tags) => _$this._tags = tags;

  ClientCertificateBuilder() {
    ClientCertificate._init(this);
  }

  ClientCertificateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientCertificateId = $v.clientCertificateId;
      _createdDate = $v.createdDate;
      _description = $v.description;
      _expirationDate = $v.expirationDate;
      _pemEncodedCertificate = $v.pemEncodedCertificate;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientCertificate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientCertificate;
  }

  @override
  void update(void Function(ClientCertificateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientCertificate build() => _build();

  _$ClientCertificate _build() {
    _$ClientCertificate _$result;
    try {
      _$result = _$v ??
          new _$ClientCertificate._(
              clientCertificateId: clientCertificateId,
              createdDate: createdDate,
              description: description,
              expirationDate: expirationDate,
              pemEncodedCertificate: pemEncodedCertificate,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ClientCertificate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

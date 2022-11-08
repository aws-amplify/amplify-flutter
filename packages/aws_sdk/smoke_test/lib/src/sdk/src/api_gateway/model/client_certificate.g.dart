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
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, clientCertificateId.hashCode),
                        createdDate.hashCode),
                    description.hashCode),
                expirationDate.hashCode),
            pemEncodedCertificate.hashCode),
        tags.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

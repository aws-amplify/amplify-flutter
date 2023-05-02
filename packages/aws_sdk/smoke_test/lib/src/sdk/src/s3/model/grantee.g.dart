// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.grantee;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Grantee extends Grantee {
  @override
  final String? displayName;
  @override
  final String? emailAddress;
  @override
  final String? id;
  @override
  final String? uri;
  @override
  final _i2.S3Type type;

  factory _$Grantee([void Function(GranteeBuilder)? updates]) =>
      (new GranteeBuilder()..update(updates))._build();

  _$Grantee._(
      {this.displayName,
      this.emailAddress,
      this.id,
      this.uri,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(type, r'Grantee', 'type');
  }

  @override
  Grantee rebuild(void Function(GranteeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GranteeBuilder toBuilder() => new GranteeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Grantee &&
        displayName == other.displayName &&
        emailAddress == other.emailAddress &&
        id == other.id &&
        uri == other.uri &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, emailAddress.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GranteeBuilder implements Builder<Grantee, GranteeBuilder> {
  _$Grantee? _$v;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  _i2.S3Type? _type;
  _i2.S3Type? get type => _$this._type;
  set type(_i2.S3Type? type) => _$this._type = type;

  GranteeBuilder() {
    Grantee._init(this);
  }

  GranteeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _emailAddress = $v.emailAddress;
      _id = $v.id;
      _uri = $v.uri;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Grantee other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Grantee;
  }

  @override
  void update(void Function(GranteeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Grantee build() => _build();

  _$Grantee _build() {
    final _$result = _$v ??
        new _$Grantee._(
            displayName: displayName,
            emailAddress: emailAddress,
            id: id,
            uri: uri,
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'Grantee', 'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

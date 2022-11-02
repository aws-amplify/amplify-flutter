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
  final _i2.S3Type type;
  @override
  final String? uri;

  factory _$Grantee([void Function(GranteeBuilder)? updates]) =>
      (new GranteeBuilder()..update(updates))._build();

  _$Grantee._(
      {this.displayName,
      this.emailAddress,
      this.id,
      required this.type,
      this.uri})
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
        type == other.type &&
        uri == other.uri;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, displayName.hashCode), emailAddress.hashCode),
                id.hashCode),
            type.hashCode),
        uri.hashCode));
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

  _i2.S3Type? _type;
  _i2.S3Type? get type => _$this._type;
  set type(_i2.S3Type? type) => _$this._type = type;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  GranteeBuilder() {
    Grantee._init(this);
  }

  GranteeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _emailAddress = $v.emailAddress;
      _id = $v.id;
      _type = $v.type;
      _uri = $v.uri;
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
            type:
                BuiltValueNullFieldError.checkNotNull(type, r'Grantee', 'type'),
            uri: uri);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.invalid_object_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidObjectState extends InvalidObjectState {
  @override
  final _i3.IntelligentTieringAccessTier? accessTier;
  @override
  final _i4.StorageClass? storageClass;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InvalidObjectState(
          [void Function(InvalidObjectStateBuilder)? updates]) =>
      (new InvalidObjectStateBuilder()..update(updates))._build();

  _$InvalidObjectState._(
      {this.accessTier, this.storageClass, this.statusCode, this.headers})
      : super._();

  @override
  InvalidObjectState rebuild(
          void Function(InvalidObjectStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidObjectStateBuilder toBuilder() =>
      new InvalidObjectStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidObjectState &&
        accessTier == other.accessTier &&
        storageClass == other.storageClass;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, accessTier.hashCode), storageClass.hashCode));
  }
}

class InvalidObjectStateBuilder
    implements Builder<InvalidObjectState, InvalidObjectStateBuilder> {
  _$InvalidObjectState? _$v;

  _i3.IntelligentTieringAccessTier? _accessTier;
  _i3.IntelligentTieringAccessTier? get accessTier => _$this._accessTier;
  set accessTier(_i3.IntelligentTieringAccessTier? accessTier) =>
      _$this._accessTier = accessTier;

  _i4.StorageClass? _storageClass;
  _i4.StorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i4.StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidObjectStateBuilder() {
    InvalidObjectState._init(this);
  }

  InvalidObjectStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessTier = $v.accessTier;
      _storageClass = $v.storageClass;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidObjectState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidObjectState;
  }

  @override
  void update(void Function(InvalidObjectStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidObjectState build() => _build();

  _$InvalidObjectState _build() {
    final _$result = _$v ??
        new _$InvalidObjectState._(
            accessTier: accessTier,
            storageClass: storageClass,
            statusCode: statusCode,
            headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

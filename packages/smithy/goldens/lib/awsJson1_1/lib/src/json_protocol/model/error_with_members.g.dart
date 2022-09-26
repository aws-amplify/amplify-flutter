// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v1.json_protocol.model.error_with_members;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorWithMembers extends ErrorWithMembers {
  @override
  final String? code;
  @override
  final _i3.KitchenSink? complexData;
  @override
  final int? integerField;
  @override
  final _i4.BuiltList<String>? listField;
  @override
  final _i4.BuiltMap<String, String>? mapField;
  @override
  final String? message;
  @override
  final String? stringField;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ErrorWithMembers(
          [void Function(ErrorWithMembersBuilder)? updates]) =>
      (new ErrorWithMembersBuilder()..update(updates))._build();

  _$ErrorWithMembers._(
      {this.code,
      this.complexData,
      this.integerField,
      this.listField,
      this.mapField,
      this.message,
      this.stringField,
      this.statusCode,
      this.headers})
      : super._();

  @override
  ErrorWithMembers rebuild(void Function(ErrorWithMembersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorWithMembersBuilder toBuilder() =>
      new ErrorWithMembersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorWithMembers &&
        code == other.code &&
        complexData == other.complexData &&
        integerField == other.integerField &&
        listField == other.listField &&
        mapField == other.mapField &&
        message == other.message &&
        stringField == other.stringField;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, code.hashCode), complexData.hashCode),
                        integerField.hashCode),
                    listField.hashCode),
                mapField.hashCode),
            message.hashCode),
        stringField.hashCode));
  }
}

class ErrorWithMembersBuilder
    implements Builder<ErrorWithMembers, ErrorWithMembersBuilder> {
  _$ErrorWithMembers? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  _i3.KitchenSinkBuilder? _complexData;
  _i3.KitchenSinkBuilder get complexData =>
      _$this._complexData ??= new _i3.KitchenSinkBuilder();
  set complexData(_i3.KitchenSinkBuilder? complexData) =>
      _$this._complexData = complexData;

  int? _integerField;
  int? get integerField => _$this._integerField;
  set integerField(int? integerField) => _$this._integerField = integerField;

  _i4.ListBuilder<String>? _listField;
  _i4.ListBuilder<String> get listField =>
      _$this._listField ??= new _i4.ListBuilder<String>();
  set listField(_i4.ListBuilder<String>? listField) =>
      _$this._listField = listField;

  _i4.MapBuilder<String, String>? _mapField;
  _i4.MapBuilder<String, String> get mapField =>
      _$this._mapField ??= new _i4.MapBuilder<String, String>();
  set mapField(_i4.MapBuilder<String, String>? mapField) =>
      _$this._mapField = mapField;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _stringField;
  String? get stringField => _$this._stringField;
  set stringField(String? stringField) => _$this._stringField = stringField;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ErrorWithMembersBuilder() {
    ErrorWithMembers._init(this);
  }

  ErrorWithMembersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _complexData = $v.complexData?.toBuilder();
      _integerField = $v.integerField;
      _listField = $v.listField?.toBuilder();
      _mapField = $v.mapField?.toBuilder();
      _message = $v.message;
      _stringField = $v.stringField;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorWithMembers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorWithMembers;
  }

  @override
  void update(void Function(ErrorWithMembersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorWithMembers build() => _build();

  _$ErrorWithMembers _build() {
    _$ErrorWithMembers _$result;
    try {
      _$result = _$v ??
          new _$ErrorWithMembers._(
              code: code,
              complexData: _complexData?.build(),
              integerField: integerField,
              listField: _listField?.build(),
              mapField: _mapField?.build(),
              message: message,
              stringField: stringField,
              statusCode: statusCode,
              headers: headers);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complexData';
        _complexData?.build();

        _$failedField = 'listField';
        _listField?.build();
        _$failedField = 'mapField';
        _mapField?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ErrorWithMembers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

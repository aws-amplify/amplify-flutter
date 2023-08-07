// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_with_members.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorWithMembers extends ErrorWithMembers {
  @override
  final String? code;
  @override
  final KitchenSink? complexData;
  @override
  final int? integerField;
  @override
  final _i3.BuiltList<String>? listField;
  @override
  final _i3.BuiltMap<String, String>? mapField;
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
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, complexData.hashCode);
    _$hash = $jc(_$hash, integerField.hashCode);
    _$hash = $jc(_$hash, listField.hashCode);
    _$hash = $jc(_$hash, mapField.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, stringField.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ErrorWithMembersBuilder
    implements Builder<ErrorWithMembers, ErrorWithMembersBuilder> {
  _$ErrorWithMembers? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  KitchenSinkBuilder? _complexData;
  KitchenSinkBuilder get complexData =>
      _$this._complexData ??= new KitchenSinkBuilder();
  set complexData(KitchenSinkBuilder? complexData) =>
      _$this._complexData = complexData;

  int? _integerField;
  int? get integerField => _$this._integerField;
  set integerField(int? integerField) => _$this._integerField = integerField;

  _i3.ListBuilder<String>? _listField;
  _i3.ListBuilder<String> get listField =>
      _$this._listField ??= new _i3.ListBuilder<String>();
  set listField(_i3.ListBuilder<String>? listField) =>
      _$this._listField = listField;

  _i3.MapBuilder<String, String>? _mapField;
  _i3.MapBuilder<String, String> get mapField =>
      _$this._mapField ??= new _i3.MapBuilder<String, String>();
  set mapField(_i3.MapBuilder<String, String>? mapField) =>
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

  ErrorWithMembersBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

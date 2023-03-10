// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.input_and_output_with_headers_io;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InputAndOutputWithHeadersIo extends InputAndOutputWithHeadersIo {
  @override
  final _i5.BuiltList<bool>? headerBooleanList;
  @override
  final int? headerByte;
  @override
  final double? headerDouble;
  @override
  final _i3.FooEnum? headerEnum;
  @override
  final _i5.BuiltList<_i3.FooEnum>? headerEnumList;
  @override
  final bool? headerFalseBool;
  @override
  final double? headerFloat;
  @override
  final int? headerInteger;
  @override
  final _i5.BuiltList<int>? headerIntegerList;
  @override
  final _i4.Int64? headerLong;
  @override
  final int? headerShort;
  @override
  final String? headerString;
  @override
  final _i5.BuiltList<String>? headerStringList;
  @override
  final _i5.BuiltSet<String>? headerStringSet;
  @override
  final _i5.BuiltList<DateTime>? headerTimestampList;
  @override
  final bool? headerTrueBool;

  factory _$InputAndOutputWithHeadersIo(
          [void Function(InputAndOutputWithHeadersIoBuilder)? updates]) =>
      (new InputAndOutputWithHeadersIoBuilder()..update(updates))._build();

  _$InputAndOutputWithHeadersIo._(
      {this.headerBooleanList,
      this.headerByte,
      this.headerDouble,
      this.headerEnum,
      this.headerEnumList,
      this.headerFalseBool,
      this.headerFloat,
      this.headerInteger,
      this.headerIntegerList,
      this.headerLong,
      this.headerShort,
      this.headerString,
      this.headerStringList,
      this.headerStringSet,
      this.headerTimestampList,
      this.headerTrueBool})
      : super._();

  @override
  InputAndOutputWithHeadersIo rebuild(
          void Function(InputAndOutputWithHeadersIoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InputAndOutputWithHeadersIoBuilder toBuilder() =>
      new InputAndOutputWithHeadersIoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InputAndOutputWithHeadersIo &&
        headerBooleanList == other.headerBooleanList &&
        headerByte == other.headerByte &&
        headerDouble == other.headerDouble &&
        headerEnum == other.headerEnum &&
        headerEnumList == other.headerEnumList &&
        headerFalseBool == other.headerFalseBool &&
        headerFloat == other.headerFloat &&
        headerInteger == other.headerInteger &&
        headerIntegerList == other.headerIntegerList &&
        headerLong == other.headerLong &&
        headerShort == other.headerShort &&
        headerString == other.headerString &&
        headerStringList == other.headerStringList &&
        headerStringSet == other.headerStringSet &&
        headerTimestampList == other.headerTimestampList &&
        headerTrueBool == other.headerTrueBool;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, headerBooleanList.hashCode);
    _$hash = $jc(_$hash, headerByte.hashCode);
    _$hash = $jc(_$hash, headerDouble.hashCode);
    _$hash = $jc(_$hash, headerEnum.hashCode);
    _$hash = $jc(_$hash, headerEnumList.hashCode);
    _$hash = $jc(_$hash, headerFalseBool.hashCode);
    _$hash = $jc(_$hash, headerFloat.hashCode);
    _$hash = $jc(_$hash, headerInteger.hashCode);
    _$hash = $jc(_$hash, headerIntegerList.hashCode);
    _$hash = $jc(_$hash, headerLong.hashCode);
    _$hash = $jc(_$hash, headerShort.hashCode);
    _$hash = $jc(_$hash, headerString.hashCode);
    _$hash = $jc(_$hash, headerStringList.hashCode);
    _$hash = $jc(_$hash, headerStringSet.hashCode);
    _$hash = $jc(_$hash, headerTimestampList.hashCode);
    _$hash = $jc(_$hash, headerTrueBool.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InputAndOutputWithHeadersIoBuilder
    implements
        Builder<InputAndOutputWithHeadersIo,
            InputAndOutputWithHeadersIoBuilder> {
  _$InputAndOutputWithHeadersIo? _$v;

  _i5.ListBuilder<bool>? _headerBooleanList;
  _i5.ListBuilder<bool> get headerBooleanList =>
      _$this._headerBooleanList ??= new _i5.ListBuilder<bool>();
  set headerBooleanList(_i5.ListBuilder<bool>? headerBooleanList) =>
      _$this._headerBooleanList = headerBooleanList;

  int? _headerByte;
  int? get headerByte => _$this._headerByte;
  set headerByte(int? headerByte) => _$this._headerByte = headerByte;

  double? _headerDouble;
  double? get headerDouble => _$this._headerDouble;
  set headerDouble(double? headerDouble) => _$this._headerDouble = headerDouble;

  _i3.FooEnum? _headerEnum;
  _i3.FooEnum? get headerEnum => _$this._headerEnum;
  set headerEnum(_i3.FooEnum? headerEnum) => _$this._headerEnum = headerEnum;

  _i5.ListBuilder<_i3.FooEnum>? _headerEnumList;
  _i5.ListBuilder<_i3.FooEnum> get headerEnumList =>
      _$this._headerEnumList ??= new _i5.ListBuilder<_i3.FooEnum>();
  set headerEnumList(_i5.ListBuilder<_i3.FooEnum>? headerEnumList) =>
      _$this._headerEnumList = headerEnumList;

  bool? _headerFalseBool;
  bool? get headerFalseBool => _$this._headerFalseBool;
  set headerFalseBool(bool? headerFalseBool) =>
      _$this._headerFalseBool = headerFalseBool;

  double? _headerFloat;
  double? get headerFloat => _$this._headerFloat;
  set headerFloat(double? headerFloat) => _$this._headerFloat = headerFloat;

  int? _headerInteger;
  int? get headerInteger => _$this._headerInteger;
  set headerInteger(int? headerInteger) =>
      _$this._headerInteger = headerInteger;

  _i5.ListBuilder<int>? _headerIntegerList;
  _i5.ListBuilder<int> get headerIntegerList =>
      _$this._headerIntegerList ??= new _i5.ListBuilder<int>();
  set headerIntegerList(_i5.ListBuilder<int>? headerIntegerList) =>
      _$this._headerIntegerList = headerIntegerList;

  _i4.Int64? _headerLong;
  _i4.Int64? get headerLong => _$this._headerLong;
  set headerLong(_i4.Int64? headerLong) => _$this._headerLong = headerLong;

  int? _headerShort;
  int? get headerShort => _$this._headerShort;
  set headerShort(int? headerShort) => _$this._headerShort = headerShort;

  String? _headerString;
  String? get headerString => _$this._headerString;
  set headerString(String? headerString) => _$this._headerString = headerString;

  _i5.ListBuilder<String>? _headerStringList;
  _i5.ListBuilder<String> get headerStringList =>
      _$this._headerStringList ??= new _i5.ListBuilder<String>();
  set headerStringList(_i5.ListBuilder<String>? headerStringList) =>
      _$this._headerStringList = headerStringList;

  _i5.SetBuilder<String>? _headerStringSet;
  _i5.SetBuilder<String> get headerStringSet =>
      _$this._headerStringSet ??= new _i5.SetBuilder<String>();
  set headerStringSet(_i5.SetBuilder<String>? headerStringSet) =>
      _$this._headerStringSet = headerStringSet;

  _i5.ListBuilder<DateTime>? _headerTimestampList;
  _i5.ListBuilder<DateTime> get headerTimestampList =>
      _$this._headerTimestampList ??= new _i5.ListBuilder<DateTime>();
  set headerTimestampList(_i5.ListBuilder<DateTime>? headerTimestampList) =>
      _$this._headerTimestampList = headerTimestampList;

  bool? _headerTrueBool;
  bool? get headerTrueBool => _$this._headerTrueBool;
  set headerTrueBool(bool? headerTrueBool) =>
      _$this._headerTrueBool = headerTrueBool;

  InputAndOutputWithHeadersIoBuilder() {
    InputAndOutputWithHeadersIo._init(this);
  }

  InputAndOutputWithHeadersIoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _headerBooleanList = $v.headerBooleanList?.toBuilder();
      _headerByte = $v.headerByte;
      _headerDouble = $v.headerDouble;
      _headerEnum = $v.headerEnum;
      _headerEnumList = $v.headerEnumList?.toBuilder();
      _headerFalseBool = $v.headerFalseBool;
      _headerFloat = $v.headerFloat;
      _headerInteger = $v.headerInteger;
      _headerIntegerList = $v.headerIntegerList?.toBuilder();
      _headerLong = $v.headerLong;
      _headerShort = $v.headerShort;
      _headerString = $v.headerString;
      _headerStringList = $v.headerStringList?.toBuilder();
      _headerStringSet = $v.headerStringSet?.toBuilder();
      _headerTimestampList = $v.headerTimestampList?.toBuilder();
      _headerTrueBool = $v.headerTrueBool;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InputAndOutputWithHeadersIo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InputAndOutputWithHeadersIo;
  }

  @override
  void update(void Function(InputAndOutputWithHeadersIoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InputAndOutputWithHeadersIo build() => _build();

  _$InputAndOutputWithHeadersIo _build() {
    _$InputAndOutputWithHeadersIo _$result;
    try {
      _$result = _$v ??
          new _$InputAndOutputWithHeadersIo._(
              headerBooleanList: _headerBooleanList?.build(),
              headerByte: headerByte,
              headerDouble: headerDouble,
              headerEnum: headerEnum,
              headerEnumList: _headerEnumList?.build(),
              headerFalseBool: headerFalseBool,
              headerFloat: headerFloat,
              headerInteger: headerInteger,
              headerIntegerList: _headerIntegerList?.build(),
              headerLong: headerLong,
              headerShort: headerShort,
              headerString: headerString,
              headerStringList: _headerStringList?.build(),
              headerStringSet: _headerStringSet?.build(),
              headerTimestampList: _headerTimestampList?.build(),
              headerTrueBool: headerTrueBool);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'headerBooleanList';
        _headerBooleanList?.build();

        _$failedField = 'headerEnumList';
        _headerEnumList?.build();

        _$failedField = 'headerIntegerList';
        _headerIntegerList?.build();

        _$failedField = 'headerStringList';
        _headerStringList?.build();
        _$failedField = 'headerStringSet';
        _headerStringSet?.build();
        _$failedField = 'headerTimestampList';
        _headerTimestampList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InputAndOutputWithHeadersIo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$InputAndOutputWithHeadersIoPayload
    extends InputAndOutputWithHeadersIoPayload {
  factory _$InputAndOutputWithHeadersIoPayload(
          [void Function(InputAndOutputWithHeadersIoPayloadBuilder)?
              updates]) =>
      (new InputAndOutputWithHeadersIoPayloadBuilder()..update(updates))
          ._build();

  _$InputAndOutputWithHeadersIoPayload._() : super._();

  @override
  InputAndOutputWithHeadersIoPayload rebuild(
          void Function(InputAndOutputWithHeadersIoPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InputAndOutputWithHeadersIoPayloadBuilder toBuilder() =>
      new InputAndOutputWithHeadersIoPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InputAndOutputWithHeadersIoPayload;
  }

  @override
  int get hashCode {
    return 80642089;
  }
}

class InputAndOutputWithHeadersIoPayloadBuilder
    implements
        Builder<InputAndOutputWithHeadersIoPayload,
            InputAndOutputWithHeadersIoPayloadBuilder> {
  _$InputAndOutputWithHeadersIoPayload? _$v;

  InputAndOutputWithHeadersIoPayloadBuilder() {
    InputAndOutputWithHeadersIoPayload._init(this);
  }

  @override
  void replace(InputAndOutputWithHeadersIoPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InputAndOutputWithHeadersIoPayload;
  }

  @override
  void update(
      void Function(InputAndOutputWithHeadersIoPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InputAndOutputWithHeadersIoPayload build() => _build();

  _$InputAndOutputWithHeadersIoPayload _build() {
    final _$result = _$v ?? new _$InputAndOutputWithHeadersIoPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

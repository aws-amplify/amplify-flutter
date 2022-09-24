// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.all_query_string_types_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AllQueryStringTypesInput extends AllQueryStringTypesInput {
  @override
  final bool? queryBoolean;
  @override
  final _i5.BuiltList<bool>? queryBooleanList;
  @override
  final int? queryByte;
  @override
  final double? queryDouble;
  @override
  final _i5.BuiltList<double>? queryDoubleList;
  @override
  final _i3.FooEnum? queryEnum;
  @override
  final _i5.BuiltList<_i3.FooEnum>? queryEnumList;
  @override
  final double? queryFloat;
  @override
  final int? queryInteger;
  @override
  final _i5.BuiltList<int>? queryIntegerList;
  @override
  final _i5.BuiltSet<int>? queryIntegerSet;
  @override
  final _i4.Int64? queryLong;
  @override
  final _i5.BuiltListMultimap<String, String>? queryParamsMapOfStringList;
  @override
  final int? queryShort;
  @override
  final String? queryString;
  @override
  final _i5.BuiltList<String>? queryStringList;
  @override
  final _i5.BuiltSet<String>? queryStringSet;
  @override
  final DateTime? queryTimestamp;
  @override
  final _i5.BuiltList<DateTime>? queryTimestampList;

  factory _$AllQueryStringTypesInput(
          [void Function(AllQueryStringTypesInputBuilder)? updates]) =>
      (new AllQueryStringTypesInputBuilder()..update(updates))._build();

  _$AllQueryStringTypesInput._(
      {this.queryBoolean,
      this.queryBooleanList,
      this.queryByte,
      this.queryDouble,
      this.queryDoubleList,
      this.queryEnum,
      this.queryEnumList,
      this.queryFloat,
      this.queryInteger,
      this.queryIntegerList,
      this.queryIntegerSet,
      this.queryLong,
      this.queryParamsMapOfStringList,
      this.queryShort,
      this.queryString,
      this.queryStringList,
      this.queryStringSet,
      this.queryTimestamp,
      this.queryTimestampList})
      : super._();

  @override
  AllQueryStringTypesInput rebuild(
          void Function(AllQueryStringTypesInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllQueryStringTypesInputBuilder toBuilder() =>
      new AllQueryStringTypesInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllQueryStringTypesInput &&
        queryBoolean == other.queryBoolean &&
        queryBooleanList == other.queryBooleanList &&
        queryByte == other.queryByte &&
        queryDouble == other.queryDouble &&
        queryDoubleList == other.queryDoubleList &&
        queryEnum == other.queryEnum &&
        queryEnumList == other.queryEnumList &&
        queryFloat == other.queryFloat &&
        queryInteger == other.queryInteger &&
        queryIntegerList == other.queryIntegerList &&
        queryIntegerSet == other.queryIntegerSet &&
        queryLong == other.queryLong &&
        queryParamsMapOfStringList == other.queryParamsMapOfStringList &&
        queryShort == other.queryShort &&
        queryString == other.queryString &&
        queryStringList == other.queryStringList &&
        queryStringSet == other.queryStringSet &&
        queryTimestamp == other.queryTimestamp &&
        queryTimestampList == other.queryTimestampList;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                queryBoolean
                                                                                    .hashCode),
                                                                            queryBooleanList
                                                                                .hashCode),
                                                                        queryByte
                                                                            .hashCode),
                                                                    queryDouble
                                                                        .hashCode),
                                                                queryDoubleList
                                                                    .hashCode),
                                                            queryEnum.hashCode),
                                                        queryEnumList.hashCode),
                                                    queryFloat.hashCode),
                                                queryInteger.hashCode),
                                            queryIntegerList.hashCode),
                                        queryIntegerSet.hashCode),
                                    queryLong.hashCode),
                                queryParamsMapOfStringList.hashCode),
                            queryShort.hashCode),
                        queryString.hashCode),
                    queryStringList.hashCode),
                queryStringSet.hashCode),
            queryTimestamp.hashCode),
        queryTimestampList.hashCode));
  }
}

class AllQueryStringTypesInputBuilder
    implements
        Builder<AllQueryStringTypesInput, AllQueryStringTypesInputBuilder> {
  _$AllQueryStringTypesInput? _$v;

  bool? _queryBoolean;
  bool? get queryBoolean => _$this._queryBoolean;
  set queryBoolean(bool? queryBoolean) => _$this._queryBoolean = queryBoolean;

  _i5.ListBuilder<bool>? _queryBooleanList;
  _i5.ListBuilder<bool> get queryBooleanList =>
      _$this._queryBooleanList ??= new _i5.ListBuilder<bool>();
  set queryBooleanList(_i5.ListBuilder<bool>? queryBooleanList) =>
      _$this._queryBooleanList = queryBooleanList;

  int? _queryByte;
  int? get queryByte => _$this._queryByte;
  set queryByte(int? queryByte) => _$this._queryByte = queryByte;

  double? _queryDouble;
  double? get queryDouble => _$this._queryDouble;
  set queryDouble(double? queryDouble) => _$this._queryDouble = queryDouble;

  _i5.ListBuilder<double>? _queryDoubleList;
  _i5.ListBuilder<double> get queryDoubleList =>
      _$this._queryDoubleList ??= new _i5.ListBuilder<double>();
  set queryDoubleList(_i5.ListBuilder<double>? queryDoubleList) =>
      _$this._queryDoubleList = queryDoubleList;

  _i3.FooEnum? _queryEnum;
  _i3.FooEnum? get queryEnum => _$this._queryEnum;
  set queryEnum(_i3.FooEnum? queryEnum) => _$this._queryEnum = queryEnum;

  _i5.ListBuilder<_i3.FooEnum>? _queryEnumList;
  _i5.ListBuilder<_i3.FooEnum> get queryEnumList =>
      _$this._queryEnumList ??= new _i5.ListBuilder<_i3.FooEnum>();
  set queryEnumList(_i5.ListBuilder<_i3.FooEnum>? queryEnumList) =>
      _$this._queryEnumList = queryEnumList;

  double? _queryFloat;
  double? get queryFloat => _$this._queryFloat;
  set queryFloat(double? queryFloat) => _$this._queryFloat = queryFloat;

  int? _queryInteger;
  int? get queryInteger => _$this._queryInteger;
  set queryInteger(int? queryInteger) => _$this._queryInteger = queryInteger;

  _i5.ListBuilder<int>? _queryIntegerList;
  _i5.ListBuilder<int> get queryIntegerList =>
      _$this._queryIntegerList ??= new _i5.ListBuilder<int>();
  set queryIntegerList(_i5.ListBuilder<int>? queryIntegerList) =>
      _$this._queryIntegerList = queryIntegerList;

  _i5.SetBuilder<int>? _queryIntegerSet;
  _i5.SetBuilder<int> get queryIntegerSet =>
      _$this._queryIntegerSet ??= new _i5.SetBuilder<int>();
  set queryIntegerSet(_i5.SetBuilder<int>? queryIntegerSet) =>
      _$this._queryIntegerSet = queryIntegerSet;

  _i4.Int64? _queryLong;
  _i4.Int64? get queryLong => _$this._queryLong;
  set queryLong(_i4.Int64? queryLong) => _$this._queryLong = queryLong;

  _i5.ListMultimapBuilder<String, String>? _queryParamsMapOfStringList;
  _i5.ListMultimapBuilder<String, String> get queryParamsMapOfStringList =>
      _$this._queryParamsMapOfStringList ??=
          new _i5.ListMultimapBuilder<String, String>();
  set queryParamsMapOfStringList(
          _i5.ListMultimapBuilder<String, String>?
              queryParamsMapOfStringList) =>
      _$this._queryParamsMapOfStringList = queryParamsMapOfStringList;

  int? _queryShort;
  int? get queryShort => _$this._queryShort;
  set queryShort(int? queryShort) => _$this._queryShort = queryShort;

  String? _queryString;
  String? get queryString => _$this._queryString;
  set queryString(String? queryString) => _$this._queryString = queryString;

  _i5.ListBuilder<String>? _queryStringList;
  _i5.ListBuilder<String> get queryStringList =>
      _$this._queryStringList ??= new _i5.ListBuilder<String>();
  set queryStringList(_i5.ListBuilder<String>? queryStringList) =>
      _$this._queryStringList = queryStringList;

  _i5.SetBuilder<String>? _queryStringSet;
  _i5.SetBuilder<String> get queryStringSet =>
      _$this._queryStringSet ??= new _i5.SetBuilder<String>();
  set queryStringSet(_i5.SetBuilder<String>? queryStringSet) =>
      _$this._queryStringSet = queryStringSet;

  DateTime? _queryTimestamp;
  DateTime? get queryTimestamp => _$this._queryTimestamp;
  set queryTimestamp(DateTime? queryTimestamp) =>
      _$this._queryTimestamp = queryTimestamp;

  _i5.ListBuilder<DateTime>? _queryTimestampList;
  _i5.ListBuilder<DateTime> get queryTimestampList =>
      _$this._queryTimestampList ??= new _i5.ListBuilder<DateTime>();
  set queryTimestampList(_i5.ListBuilder<DateTime>? queryTimestampList) =>
      _$this._queryTimestampList = queryTimestampList;

  AllQueryStringTypesInputBuilder() {
    AllQueryStringTypesInput._init(this);
  }

  AllQueryStringTypesInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _queryBoolean = $v.queryBoolean;
      _queryBooleanList = $v.queryBooleanList?.toBuilder();
      _queryByte = $v.queryByte;
      _queryDouble = $v.queryDouble;
      _queryDoubleList = $v.queryDoubleList?.toBuilder();
      _queryEnum = $v.queryEnum;
      _queryEnumList = $v.queryEnumList?.toBuilder();
      _queryFloat = $v.queryFloat;
      _queryInteger = $v.queryInteger;
      _queryIntegerList = $v.queryIntegerList?.toBuilder();
      _queryIntegerSet = $v.queryIntegerSet?.toBuilder();
      _queryLong = $v.queryLong;
      _queryParamsMapOfStringList = $v.queryParamsMapOfStringList?.toBuilder();
      _queryShort = $v.queryShort;
      _queryString = $v.queryString;
      _queryStringList = $v.queryStringList?.toBuilder();
      _queryStringSet = $v.queryStringSet?.toBuilder();
      _queryTimestamp = $v.queryTimestamp;
      _queryTimestampList = $v.queryTimestampList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllQueryStringTypesInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AllQueryStringTypesInput;
  }

  @override
  void update(void Function(AllQueryStringTypesInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AllQueryStringTypesInput build() => _build();

  _$AllQueryStringTypesInput _build() {
    _$AllQueryStringTypesInput _$result;
    try {
      _$result = _$v ??
          new _$AllQueryStringTypesInput._(
              queryBoolean: queryBoolean,
              queryBooleanList: _queryBooleanList?.build(),
              queryByte: queryByte,
              queryDouble: queryDouble,
              queryDoubleList: _queryDoubleList?.build(),
              queryEnum: queryEnum,
              queryEnumList: _queryEnumList?.build(),
              queryFloat: queryFloat,
              queryInteger: queryInteger,
              queryIntegerList: _queryIntegerList?.build(),
              queryIntegerSet: _queryIntegerSet?.build(),
              queryLong: queryLong,
              queryParamsMapOfStringList: _queryParamsMapOfStringList?.build(),
              queryShort: queryShort,
              queryString: queryString,
              queryStringList: _queryStringList?.build(),
              queryStringSet: _queryStringSet?.build(),
              queryTimestamp: queryTimestamp,
              queryTimestampList: _queryTimestampList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'queryBooleanList';
        _queryBooleanList?.build();

        _$failedField = 'queryDoubleList';
        _queryDoubleList?.build();

        _$failedField = 'queryEnumList';
        _queryEnumList?.build();

        _$failedField = 'queryIntegerList';
        _queryIntegerList?.build();
        _$failedField = 'queryIntegerSet';
        _queryIntegerSet?.build();

        _$failedField = 'queryParamsMapOfStringList';
        _queryParamsMapOfStringList?.build();

        _$failedField = 'queryStringList';
        _queryStringList?.build();
        _$failedField = 'queryStringSet';
        _queryStringSet?.build();

        _$failedField = 'queryTimestampList';
        _queryTimestampList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AllQueryStringTypesInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AllQueryStringTypesInputPayload
    extends AllQueryStringTypesInputPayload {
  factory _$AllQueryStringTypesInputPayload(
          [void Function(AllQueryStringTypesInputPayloadBuilder)? updates]) =>
      (new AllQueryStringTypesInputPayloadBuilder()..update(updates))._build();

  _$AllQueryStringTypesInputPayload._() : super._();

  @override
  AllQueryStringTypesInputPayload rebuild(
          void Function(AllQueryStringTypesInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllQueryStringTypesInputPayloadBuilder toBuilder() =>
      new AllQueryStringTypesInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllQueryStringTypesInputPayload;
  }

  @override
  int get hashCode {
    return 807638607;
  }
}

class AllQueryStringTypesInputPayloadBuilder
    implements
        Builder<AllQueryStringTypesInputPayload,
            AllQueryStringTypesInputPayloadBuilder> {
  _$AllQueryStringTypesInputPayload? _$v;

  AllQueryStringTypesInputPayloadBuilder() {
    AllQueryStringTypesInputPayload._init(this);
  }

  @override
  void replace(AllQueryStringTypesInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AllQueryStringTypesInputPayload;
  }

  @override
  void update(void Function(AllQueryStringTypesInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AllQueryStringTypesInputPayload build() => _build();

  _$AllQueryStringTypesInputPayload _build() {
    final _$result = _$v ?? new _$AllQueryStringTypesInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

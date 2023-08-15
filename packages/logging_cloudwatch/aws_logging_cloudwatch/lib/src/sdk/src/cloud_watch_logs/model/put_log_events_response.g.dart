// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_log_events_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutLogEventsResponse extends PutLogEventsResponse {
  @override
  final String? nextSequenceToken;
  @override
  final _i2.RejectedLogEventsInfo? rejectedLogEventsInfo;

  factory _$PutLogEventsResponse(
          [void Function(PutLogEventsResponseBuilder)? updates]) =>
      (new PutLogEventsResponseBuilder()..update(updates))._build();

  _$PutLogEventsResponse._({this.nextSequenceToken, this.rejectedLogEventsInfo})
      : super._();

  @override
  PutLogEventsResponse rebuild(
          void Function(PutLogEventsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutLogEventsResponseBuilder toBuilder() =>
      new PutLogEventsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutLogEventsResponse &&
        nextSequenceToken == other.nextSequenceToken &&
        rejectedLogEventsInfo == other.rejectedLogEventsInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextSequenceToken.hashCode);
    _$hash = $jc(_$hash, rejectedLogEventsInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutLogEventsResponseBuilder
    implements Builder<PutLogEventsResponse, PutLogEventsResponseBuilder> {
  _$PutLogEventsResponse? _$v;

  String? _nextSequenceToken;
  String? get nextSequenceToken => _$this._nextSequenceToken;
  set nextSequenceToken(String? nextSequenceToken) =>
      _$this._nextSequenceToken = nextSequenceToken;

  _i2.RejectedLogEventsInfoBuilder? _rejectedLogEventsInfo;
  _i2.RejectedLogEventsInfoBuilder get rejectedLogEventsInfo =>
      _$this._rejectedLogEventsInfo ??= new _i2.RejectedLogEventsInfoBuilder();
  set rejectedLogEventsInfo(
          _i2.RejectedLogEventsInfoBuilder? rejectedLogEventsInfo) =>
      _$this._rejectedLogEventsInfo = rejectedLogEventsInfo;

  PutLogEventsResponseBuilder() {
    PutLogEventsResponse._init(this);
  }

  PutLogEventsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextSequenceToken = $v.nextSequenceToken;
      _rejectedLogEventsInfo = $v.rejectedLogEventsInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutLogEventsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutLogEventsResponse;
  }

  @override
  void update(void Function(PutLogEventsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutLogEventsResponse build() => _build();

  _$PutLogEventsResponse _build() {
    _$PutLogEventsResponse _$result;
    try {
      _$result = _$v ??
          new _$PutLogEventsResponse._(
              nextSequenceToken: nextSequenceToken,
              rejectedLogEventsInfo: _rejectedLogEventsInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rejectedLogEventsInfo';
        _rejectedLogEventsInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutLogEventsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

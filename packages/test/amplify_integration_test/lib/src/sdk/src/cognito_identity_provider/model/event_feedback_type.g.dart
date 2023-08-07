// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_feedback_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventFeedbackType extends EventFeedbackType {
  @override
  final FeedbackValueType feedbackValue;
  @override
  final String provider;
  @override
  final DateTime? feedbackDate;

  factory _$EventFeedbackType(
          [void Function(EventFeedbackTypeBuilder)? updates]) =>
      (new EventFeedbackTypeBuilder()..update(updates))._build();

  _$EventFeedbackType._(
      {required this.feedbackValue, required this.provider, this.feedbackDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        feedbackValue, r'EventFeedbackType', 'feedbackValue');
    BuiltValueNullFieldError.checkNotNull(
        provider, r'EventFeedbackType', 'provider');
  }

  @override
  EventFeedbackType rebuild(void Function(EventFeedbackTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventFeedbackTypeBuilder toBuilder() =>
      new EventFeedbackTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventFeedbackType &&
        feedbackValue == other.feedbackValue &&
        provider == other.provider &&
        feedbackDate == other.feedbackDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, feedbackValue.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, feedbackDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EventFeedbackTypeBuilder
    implements Builder<EventFeedbackType, EventFeedbackTypeBuilder> {
  _$EventFeedbackType? _$v;

  FeedbackValueType? _feedbackValue;
  FeedbackValueType? get feedbackValue => _$this._feedbackValue;
  set feedbackValue(FeedbackValueType? feedbackValue) =>
      _$this._feedbackValue = feedbackValue;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  DateTime? _feedbackDate;
  DateTime? get feedbackDate => _$this._feedbackDate;
  set feedbackDate(DateTime? feedbackDate) =>
      _$this._feedbackDate = feedbackDate;

  EventFeedbackTypeBuilder();

  EventFeedbackTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _feedbackValue = $v.feedbackValue;
      _provider = $v.provider;
      _feedbackDate = $v.feedbackDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventFeedbackType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventFeedbackType;
  }

  @override
  void update(void Function(EventFeedbackTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventFeedbackType build() => _build();

  _$EventFeedbackType _build() {
    final _$result = _$v ??
        new _$EventFeedbackType._(
            feedbackValue: BuiltValueNullFieldError.checkNotNull(
                feedbackValue, r'EventFeedbackType', 'feedbackValue'),
            provider: BuiltValueNullFieldError.checkNotNull(
                provider, r'EventFeedbackType', 'provider'),
            feedbackDate: feedbackDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

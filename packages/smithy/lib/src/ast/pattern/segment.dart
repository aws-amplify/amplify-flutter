import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'segment.g.dart';

enum SegmentType {
  literal,
  label,
  greedyLabel,
}

@JsonSerializable()
class Segment with AWSEquatable<Segment> {
  Segment(this.content, this.type) {
    _checkForInvalidContents();
  }

  void _checkForInvalidContents() {
    if (type == SegmentType.literal) {
      if (content.isEmpty) {
        throw InvalidPatternError('Segments must not be empty');
      } else if (content.contains('{') || content.contains('}')) {
        throw InvalidPatternError(
            'Literal segments must not contain `{` or `}` characters. Found segment `' +
                content +
                '`');
      }
    } else if (content.isEmpty) {
      throw InvalidPatternError('Empty label declaration in pattern.');
    }
  }

  factory Segment.parse(String content) {
    if (content.length >= 2 &&
        content[0] == '{' &&
        content[content.length - 1] == '}') {
      final labelType = content[content.length - 2] == '+'
          ? SegmentType.greedyLabel
          : SegmentType.label;
      content = labelType == SegmentType.greedyLabel
          ? content.substring(1, content.length - 2)
          : content.substring(1, content.length - 1);
      return Segment(content, labelType);
    } else {
      return Segment(content, SegmentType.literal);
    }
  }

  factory Segment.fromJson(Map<String, Object?> json) =>
      _$SegmentFromJson(json);

  final String content;

  @JsonKey(name: 'segmentType')
  final SegmentType type;

  @override
  List<Object> get props => [content, type];

  String get asString {
    switch (type) {
      case SegmentType.literal:
        return content;
      case SegmentType.label:
        return '{$content}';
      case SegmentType.greedyLabel:
        return '{$content+}';
    }
  }

  bool get isLabel => type != SegmentType.literal;

  bool get isGreedyLabel => type == SegmentType.greedyLabel;

  Map<String, Object?> toJson() => _$SegmentToJson(this);

  @override
  String toString() => asString;
}

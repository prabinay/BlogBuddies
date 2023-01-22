import '../app/constants/enum.dart';

class WhatsappStory {
  final MediaType? mediaType;
  final String? media;
  final double? duration;
  final String? caption;
  final String? when;
  final String? color;

  WhatsappStory({
    this.mediaType,
    this.media,
    this.duration,
    this.caption,
    this.when,
    this.color,
  });
}
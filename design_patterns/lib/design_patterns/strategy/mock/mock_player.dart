import 'package:design_patterns/design_patterns/strategy/model/content.dart';
import 'package:design_patterns/design_patterns/strategy/model/content_type.dart';

class MockPlayer {
  final audioPlayer = Content(id: 10, name: 'Music', type: ContentType.audio);
  final videoPlayer = Content(id: 10, name: 'Movie', type: ContentType.video);
  final pdfPlayer = Content(id: 10, name: 'Book', type: ContentType.pdf);
  final webViewPlayer =
      Content(id: 10, name: 'Google.com', type: ContentType.webView);
}

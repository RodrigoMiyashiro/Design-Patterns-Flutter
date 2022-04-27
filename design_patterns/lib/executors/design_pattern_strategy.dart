import 'package:design_patterns/design_patterns/strategy/mock/mock_context.dart';
import 'package:design_patterns/design_patterns/strategy/mock/mock_player.dart';
import 'package:design_patterns/design_patterns/strategy/player/player_route.dart';
import 'package:design_patterns/design_patterns/strategy/player/webview_player.dart';

class DesignPatternStrategy {
  void execute() {
    final mockContext = MockContext();
    final mockPlayer = MockPlayer();

    // final player = WebViewPlayer(content: mockPlayer.audioPlayer);
    // final player = WebViewPlayer(content: mockPlayer.videoPlayer);
    // final player = WebViewPlayer(content: mockPlayer.pdfPlayer);
    final player = WebViewPlayer(content: mockPlayer.webViewPlayer);

    final playerRoute = PlayerRoute(player: player);
    playerRoute.executePlayer(context: mockContext.context);
  }
}

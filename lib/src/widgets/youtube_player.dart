import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: must_be_immutable
class VideoYoutubePorKey extends StatelessWidget {
  final String keyYoutube;

  VideoYoutubePorKey({this.keyYoutube});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: keyYoutube,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    return YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
      progressColors: ProgressBarColors(
          playedColor: Colors.indigo, handleColor: Colors.amberAccent),
      progressIndicatorColor: Colors.amber,
      onReady: () {
        _controller.addListener(( ) {});
      },
    );
  }
}

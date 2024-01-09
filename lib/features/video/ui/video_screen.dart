import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatefulWidget {
  final String id;

  const VideoScreen({super.key, required this.id});

  @override
  // ignore: library_private_types_in_public_api
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.id,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        onReady: () {
          // ignore: avoid_print
          print('Player is ready.');
        },
      ),
    );
  }
}

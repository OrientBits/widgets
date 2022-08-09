import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerExample extends StatefulWidget {
  const VideoPlayerExample({Key? key}) : super(key: key);

  @override
  State<VideoPlayerExample> createState() => _VideoPlayerExampleState();
}

class _VideoPlayerExampleState extends State<VideoPlayerExample> {
  late VideoPlayerController _videoPlayerController;
  late VideoPlayerController _audioPlayerController;

  @override
  void initState() {
    super.initState();

    _videoPlayerController = VideoPlayerController.network(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4")
      ..setLooping(true)
      ..initialize().then((value) {
        setState(() {});
      });

    //_audioPlayerController = VideoPlayerController.network("dataSource")
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("VideoPlayer Example"),
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text("Play Online video"),
          ),
          Center(
            child: _videoPlayerController.value.isInitialized
                ? _buildVideoPlayerUI()
                : const CircularProgressIndicator(),
          )
        ],
      ),
    );
  }

  Widget _buildVideoPlayerUI() {
    Fluttertoast.showToast(msg: "Building video Player UI");
    return Column(
      children: [
        AspectRatio(
          aspectRatio: _videoPlayerController.value.aspectRatio,
          child: VideoPlayer(_videoPlayerController),
        ),
        Text(
            "${_videoPlayerController.value.position} / ${_videoPlayerController.value.duration}"),
        VideoProgressIndicator(_videoPlayerController, allowScrubbing: true),
        ElevatedButton.icon(
          onPressed: () {
            _videoPlayerController.value.isPlaying
                ? _videoPlayerController.pause()
                : _videoPlayerController.play();
            setState(() {

            });
          },
          icon: Icon(_videoPlayerController.value.isPlaying
              ? Icons.pause
              : Icons.play_arrow),
          label:
              Text(_videoPlayerController.value.isPlaying ? "Pause" : "Play"),
        )
      ],
    );
  }
}

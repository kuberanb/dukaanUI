import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutoubePlayer extends StatefulWidget {
  const YoutoubePlayer({Key? key}) : super(key: key);

  @override
  State<YoutoubePlayer> createState() => _YoutoubePlayerState();
}

class _YoutoubePlayerState extends State<YoutoubePlayer> {

    late YoutubePlayerController _youtubeController;

    final _videoUrl = 'https://www.youtube.com/watch?v=YMx8Bbev6T4';



  @override
  void initState() {

    final videoId = YoutubePlayer.convertUrlToId(_videoUrl);
    _youtubeController = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        loop: true,
      ),
    );

    
    // TODO: implement initState
    super.initState();


  }


  @override
  Widget build(BuildContext context) {
    return Container(
child: Column(
  children: [

          YoutubePlayer(
            controller: _youtubeController,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: const ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
            ),
            onReady: () {
              debugPrint('Ready');
            },
            bottomActions: [
              CurrentPosition(),
              ProgressBar(
                colors: const ProgressBarColors(
                  playedColor: Colors.amber,
                  handleColor: Colors.amberAccent
                ),
              ),
              const PlaybackSpeedButton(),
            ],

          ),


  ],
),
     

    );
  }
}
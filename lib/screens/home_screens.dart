import 'package:flutter/material.dart';
import 'package:flutter_learn_app/models/channel_model.dart';
import 'package:flutter_learn_app/models/video_model.dart';
import 'package:flutter_learn_app/screens/video_screen.dart';
import 'package:flutter_learn_app/services/api_service.dart';

class HomeScreens extends StatefulWidget {
  @override
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  Channel? _channel;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _initChannel();
  }

  _initChannel() async {
    Channel channel = await APIService.instance
        .fetchChannel(channelId: 'UC6Dy0rQ6zDnQuHQ1EeErGUA');
    setState(() {
      _channel = channel;
    });
  }

  _buildVideo(Video video) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => VideoScreen(id: video.id),
        ),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        padding: EdgeInsets.all(10.0),
        height: 140.0,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 1),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Image(
              width: 150.0,
              image: NetworkImage(video.thumbnailUrl),
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: Text(
                video.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _loadMoreVideos() async {
    final channel = _channel;
    if (channel != null) {
      _isLoading = true;
      List<Video> moreVideos = await APIService.instance
          .fetchVideosFromPlaylist(playlistId: channel.uploadPlaylistId);
      List<Video> allVideos = channel.videos..addAll(moreVideos);
      setState(() {
        _channel?.videos = allVideos;
      });
      _isLoading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final channel = _channel;
    return Scaffold(
      appBar: AppBar(
        title: Text('YouTube Channel'),
      ),
      body: channel != null
          ? NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification scrollDetails) {
                if (!_isLoading &&
                    channel.videos.length != int.parse(channel.videoCount) &&
                    scrollDetails.metrics.pixels ==
                        scrollDetails.metrics.maxScrollExtent) {
                  _loadMoreVideos();
                }
                return false;
              },
              child: ListView.builder(
                itemCount: 1 + channel.videos.length,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return BuildProfileInfo(channelParam: channel);
                  }
                  Video video = channel.videos[index - 1];
                  return _buildVideo(video);
                },
              ),
            )
          : Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).primaryColor, // Red
                ),
              ),
            ),
    );
  }
}

class BuildProfileInfo extends StatelessWidget {
  final Channel? channelParam;

  const BuildProfileInfo({
    super.key,
    this.channelParam,
  });

  @override
  Widget build(BuildContext context) {
    final channel = channelParam;

    return channel != null
        ? Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(20.0),
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 1),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 35.0,
                  backgroundImage: NetworkImage(channel.profilePictureUrl),
                ),
                SizedBox(width: 12.0),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        channel.title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '${channel.subscriberCount} subscribers',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        : const SizedBox();
  }
}

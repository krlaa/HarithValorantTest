import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart' as ytb;
import 'package:youtube_player_iframe/youtube_player_iframe.dart' as webytb;

class ProfilePage extends StatefulWidget { 
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  List<ytb.YoutubePlayerController> ytbList= [ytb.YoutubePlayerController(
    initialVideoId: '9RbJjUHwBdM',
    flags: ytb.YoutubePlayerFlags(
      hideThumbnail: true,
        autoPlay: true,
        mute: true,
    )),ytb.YoutubePlayerController(
    initialVideoId: 'Brg80kgftck',
    flags: ytb.YoutubePlayerFlags(
        autoPlay: false,
        mute: true,
    )),ytb.YoutubePlayerController(
    initialVideoId: 'Brg80kgftck',
    flags: ytb.YoutubePlayerFlags(
       hideThumbnail: true,
        autoPlay: false,
        mute: true,
    )),ytb.YoutubePlayerController(
    initialVideoId: 'Brg80kgftck',
    flags: ytb.YoutubePlayerFlags(
       hideThumbnail: true,
        autoPlay: false,
        mute: true,
    ))];
  ytb.YoutubePlayerController _controller = ytb.YoutubePlayerController(
    initialVideoId: 'Brg80kgftck',
    flags: ytb.YoutubePlayerFlags(
       hideThumbnail: true,
        autoPlay: false,
        mute: true,
    ),
);
webytb.YoutubePlayerController _controllerweb = webytb.YoutubePlayerController(
    initialVideoId: 'Brg80kgftck',
    params: webytb.YoutubePlayerParams(

        startAt: Duration(seconds: 30),
        showControls: true,
        showFullscreenButton: true,
    ),
);


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar( elevation: 0.0,
          backgroundColor: Colors.black,actions: [Icon(Icons.settings)],),body: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: CircleAvatar(foregroundImage: AssetImage("assets/b.png") ,radius: 40,)),
              ),Align(alignment: Alignment.bottomCenter,child: Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Icon(Icons.edit,color: Colors.amber,),
              )),
            
            ],
          ),  Flexible(
                              child: Container(
                             height: MediaQuery.of(context).size.height,
                                child: GridView(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
  children: <Widget>[
    Container(color: Colors.red,child: !kIsWeb?ytb.YoutubePlayer(
    controller: ytbList[0],
    liveUIColor: Colors.amber,
    
):webytb.YoutubePlayerIFrame(
    controller: _controllerweb,
    aspectRatio: 18 / 9,

),
),
 Container(
   key: Key('hello'),
   child: !kIsWeb?ytb.YoutubePlayer(
    controller: ytbList[1],
    liveUIColor: Colors.amber,
    
):webytb.YoutubePlayerIFrame(
    controller: _controllerweb,
    aspectRatio: 18 / 9,

),
),Container(color: Colors.red,child: !kIsWeb?ytb.YoutubePlayer(
    controller: ytbList[2],
    liveUIColor: Colors.amber,
    
):webytb.YoutubePlayerIFrame(
    controller: _controllerweb,
    aspectRatio: 18 / 9,

),
),Container(color: Colors.red,child: !kIsWeb?ytb.YoutubePlayer(
    controller: ytbList[3],
    liveUIColor: Colors.amber,
    
):webytb.YoutubePlayerIFrame(
    controller: _controllerweb,
    aspectRatio: 18 / 9,

),
)
  ],
),
                              ),
              )],) ,
      
    );
  }
}

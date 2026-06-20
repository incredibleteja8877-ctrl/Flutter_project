// import 'package:flutter/material.dart';

// void main() {
//   runApp(const YoutubeApp());
// }
// class YoutubeApp extends StatelessWidget{
//   const YoutubeApp({super.key});
//  @override
//  Widget build(BuildContext context){
//   return MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: YoutubeHomeScreen(),
//   );
//  } 
// }
// class YoutubeHomeScreen extends StatelessWidget{
// const YoutubeHomeScreen({super.key});
// @override
// Widget build(BuildContext context){
//   return Scaffold(
// backgroundColor: Colors.white,
// appBar: AppBar(
//   backgroundColor: Colors.white,
//   elevation: 1,
//   title: Row(
//     children: const [
//       Icon(
//         Icons.play_circle_fill,
//         color: Colors.red,
//         size: 30,
//       ),
//       SizedBox(width: 5),
//       Text(
//         "YouTube",
//         style: TextStyle(
//           color: Colors.black,
//           fontSize: 20,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     ],
//   ),
// actions: const[
//   Icon(Icons.notifications_none, color: Colors.black),
//   SizedBox(width: 15),
//   Icon(Icons.search, color: Colors.black),
//   SizedBox(width: 15),
//   CircleAvatar(
//     radius: 15,
//     child: Icon(Icons.person),
//   ),
//   SizedBox(width: 15),
// ],
// ),
// body: SingleChildScrollView(
//   child: Column(
//     children: [
//       VideoCard(
//         imagePath: "assets/images/video1.jpg",
//         title: "Flutter Tutorial for Beginners",
//         subtitle: "Learn Flutter in 1 hour",
//       ),
//       const SizedBox(height: 10),
//       VideoCard(
//         imagePath: "assets/images/video2.jpg",
//         title: "Dart Programming Language",
//         subtitle: "Learn Dart in 30 minutes",
//       ),
//       const SizedBox(height: 10),
//       VideoCard(
//         imagePath: "assets/images/video3.jpg",
//         title: "Flutter Widgets Explained",
//         subtitle: "Understanding Flutter Widgets",
//       ),
//     ],
//   ),
// ),
// bottomNavigationBar: BottomNavigationBar(
//   type: BottomNavigationBarType.fixed,
//   selectedItemColor: Colors.black,
//   unselectedItemColor: Colors.grey,
//   items: const[
//     BottomNavigationBarItem(
//       icon: Icon(Icons.home),
//       label: "Home",
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.video_library),
//       label: "shorts",
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.add_circle_outline, size: 30),
//       label: "Create",
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.subscriptions),
//       label: "Subscriptions",
//     ),
//     BottomNavigationBarItem(      
//       icon: Icon(Icons.person),
//       label: "You", 
//     ),
//   ],
// ),
//   );
// }  
// }
// class VideoCard extends StatelessWidget {
//   final String imagePath;
//   final String title;
//   final String subtitle;
//   const VideoCard({super.key, required this.imagePath, required this.title, required this.subtitle});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Image.asset(
//           imagePath,
//           width: double.infinity,
//           height: 220,
//           fit: BoxFit.cover,
//         ),
//         Padding(
//           padding: const EdgeInsets.all(10),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const CircleAvatar(
//                 radius: 20,
//                 child: Icon(Icons.person),
//               ),
//               const SizedBox(width: 10),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       title,
//                       style: const TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 5),
//                     Text(
//                       subtitle,
//                       style: const TextStyle(
//                         color: Colors.grey,
//                         fontSize: 13,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const Icon(Icons.more_vert),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
  
  
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: YoutubeHomeScreen(),
    );
  }
}

class YoutubeHomeScreen extends StatelessWidget {
  const YoutubeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Row(
          children: const [
            Icon(Icons.play_circle_fill, color: Colors.red, size: 35),
            SizedBox(width: 5),
            Text(
              "YouTube",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.cast, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.notifications_none, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 15),
          CircleAvatar(
            radius: 15,
            child: Icon(Icons.person, size: 18),
          ),
          SizedBox(width: 10),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: const [
            CategoryChips(),

            VideoCard(
              imagePath: "assets/images/image1.png",
              videoPath: "assets/videos/video1.mp4",
              duration: "1:25",
              title:
                  "UFC Fighter Declares 'Michelle Obama Is a Man' After Winning Match at White House | THR News",
              subtitle: "The Hollywood Reporter • 50K views • 1 day ago",
            ),

            VideoCard(
              imagePath: "assets/images/image2.png",
              videoPath: "assets/videos/video2.mp4",
              duration: "2:10",
              title: "Build Calculator App in Flutter",
              subtitle: "Apna College • 120K views • 1 week ago",
            ),

            VideoCard(
              imagePath: "assets/images/image3.png",
              videoPath: "assets/videos/video3.mp4",
              duration: "1:45",
              title: "Learn Dart in One Video",
              subtitle: "Programming Knowledge • 75K views • 5 days ago",
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.video_library), label: "Shorts"),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline, size: 32),
            label: "Create",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: "Subs"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "You"),
        ],
      ),
    );
  }
}

class CategoryChips extends StatelessWidget {
  const CategoryChips({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          Chip(label: Text("All")),
          SizedBox(width: 8),
          Chip(label: Text("Flutter")),
          SizedBox(width: 8),
          Chip(label: Text("Gaming")),
          SizedBox(width: 8),
          Chip(label: Text("Music")),
          SizedBox(width: 8),
          Chip(label: Text("News")),
          SizedBox(width: 8),
          Chip(label: Text("Live")),
        ],
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  final String imagePath;
  final String videoPath;
  final String duration;
  final String title;
  final String subtitle;

  const VideoCard({
    super.key,
    required this.imagePath,
    required this.videoPath,
    required this.duration,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VideoPlayerScreen(videoPath: videoPath),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                imagePath,
                width: double.infinity,
                height: 400,
                fit: BoxFit.cover,
              ),

              const Positioned(
                top: 80,
                left: 0,
                right: 0,
                child: Icon(
                  Icons.play_circle_fill,
                  color: Colors.white,
                  size: 70,
                ),
              ),

              Positioned(
                right: 8,
                bottom: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 3,
                  ),
                  color: Colors.black,
                  child: Text(
                    duration,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 20,
                  child: Icon(Icons.person),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 5),

                      Text(
                        subtitle,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),

                const Icon(Icons.more_vert),
              ],
            ),
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  final String videoPath;

  const VideoPlayerScreen({
    super.key,
    required this.videoPath,
  });

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        setState(() {});
        controller.play();
      });
      controller.addListener((){
        setState(() {});
      }
        
      );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void playPauseVideo() {
    setState(() {
      if (controller.value.isPlaying) {
        controller.pause();
      } else {
        controller.play();
      }
    });
  }
  String formatDuration(Duration duration){
    String twoDigits(int n)=> n.toString().padLeft(2,'0');
    final minutes=twoDigits(
      duration.inMinutes.remainder(60),
    );
    final seconds= twoDigits(
      duration.inSeconds.remainder(60),
    );
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text("Now Playing"),
      ),

      body: Center(
        child: controller.value.isInitialized
            ? Stack(
                alignment: Alignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: VideoPlayer(controller),
                  ),

                  IconButton(
                    iconSize: 90,
                    icon: Icon(
                      controller.value.isPlaying
                          ? Icons.pause_circle_filled
                          : Icons.play_circle_fill,
                      color: Colors.white,
                    ),
                    onPressed: playPauseVideo,
                  ),
                  Positioned(
  bottom: 25,
  left: 10,
  child: Text(
    "${formatDuration(controller.value.position)} / "
    "${formatDuration(controller.value.duration)}",
    style: const TextStyle(
      color: Colors.white,
      fontSize: 14,
    ),
  ),
),

Positioned(
  bottom: 0,
  left: 0,
  right: 0,
  child: VideoProgressIndicator(
    controller,
    allowScrubbing: true,
    colors: const VideoProgressColors(
      playedColor: Colors.red,
      bufferedColor: Colors.grey,
      backgroundColor: Colors.white24,
    ),
  ),
),
                ],
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
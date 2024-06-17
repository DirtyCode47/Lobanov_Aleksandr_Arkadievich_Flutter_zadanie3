import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lobanov_a_a_flutter_zadanie3/generated/locale_keys.g.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.news_feed.tr()),
      ),
      body: ListView(
        children: const [
          NewsFeedPost(
            userName: "Alexander Lobanov",
            userImage: "assets/images/avatar_placeholder.jpg",
            postImage: "assets/images/cat1.jpg",
            postText: "Just finished coding a new feature! #programming #cats",
            likes: 124,
          ),
          NewsFeedPost(
            userName: "Maria Ivanova",
            userImage: "assets/images/avatar_placeholder.jpg",
            postImage: "assets/images/cat2.jpg",
            postText: "My cat is helping me debug my code. #debugging #catlovers",
            likes: 98,
          ),
          // Add more posts here
        ],
      ),
    );
  }
}

class NewsFeedPost extends StatelessWidget {
  final String userName;
  final String userImage;
  final String postImage;
  final String postText;
  final int likes;

  const NewsFeedPost({
    super.key,
    required this.userName,
    required this.userImage,
    required this.postImage,
    required this.postText,
    required this.likes,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(userImage),
                ),
                const SizedBox(width: 10),
                Text(
                  userName,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Image.asset(postImage),
            const SizedBox(height: 10),
            Text(postText),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.thumb_up, color: Colors.blue),
                    const SizedBox(width: 5),
                    Text("$likes"),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // Handle like button press
                  },
                  child: Text(LocaleKeys.like.tr()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
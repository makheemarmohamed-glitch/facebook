import 'package:flutter/material.dart';
import '../widgets/story_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Facebook',
          style: TextStyle(
            color: Color(0xFF1877F2),
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.add_circle, color: Colors.black), onPressed: () {}),
          IconButton(icon: const Icon(Icons.search, color: Colors.black), onPressed: () {}),
          IconButton(icon: const Icon(Icons.messenger, color: Colors.black), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildStoriesSection(),
            const Divider(height: 1, thickness: 1),
            _buildPostSection(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildStoriesSection() {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          const StoryCard(text: 'Create a\nStory', isCreate: true),
          StoryCard(
            text: '',
            imageUrl: 'https://picsum.photos/200/300?random=1',
          ),
          StoryCard(
            text: '',
            imageUrl: 'https://picsum.photos/200/300?random=2',
          ),
          StoryCard(
            text: '',
            imageUrl: 'https://picsum.photos/200/300?random=3',
          ),
        ],
      ),
    );
  }

  Widget _buildPostSection() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.person, color: Colors.white),
              ),
              const SizedBox(width: 10),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Route', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text('8h . 🌎', style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
              const Spacer(),
              const Icon(Icons.more_horiz),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Route',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border, color: Colors.grey[700]),
                  const SizedBox(width: 5),
                  const Text('Like'),
                  const SizedBox(width: 15),
                  Icon(Icons.comment_outlined, color: Colors.grey[700]),
                  const SizedBox(width: 5),
                  const Text('Comment'),
                  const SizedBox(width: 15),
                  Icon(Icons.share_outlined, color: Colors.grey[700]),
                  const SizedBox(width: 5),
                  const Text('Share'),
                ],
              ),
              Icon(Icons.bookmark_border, color: Colors.grey[700]),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFF1877F2),
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: 'Video'),
        BottomNavigationBarItem(icon: Icon(Icons.storefront), label: 'Market'),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Friends'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
      ],
    );
  }
}
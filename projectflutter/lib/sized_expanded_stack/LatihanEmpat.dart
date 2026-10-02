import 'package:flutter/material.dart';

void main() {
  runApp(const LatihanEmpat());
}

class LatihanEmpat extends StatelessWidget {
  const LatihanEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Profile UI',
      theme: ThemeData.dark(),
      home: const InstagramProfileScreen(),
    );
  }
}

class InstagramProfileScreen extends StatelessWidget {
  const InstagramProfileScreen({super.key});

  final List<String> highlights = const [
    'R',
    'I',
    'S',
    'K',
    'A',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'riskauls',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_box_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, size: 40, color: Colors.white),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildStatColumn('Posts', '4'),
                        _buildStatColumn('Followers', '1.2M'),
                        _buildStatColumn('Following', '350'),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Bio
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('rrskaa', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('My Trip My Adventure ! 🚀'),
                ],
              ),
            ),

            const SizedBox(height: 16),

            SizedBox(
              height: 95,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: highlights.length,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey.shade700, width: 2),
                          ),
                          child: const CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.grey,
                            child: Icon(Icons.star, color: Colors.white70),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          highlights[index],
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            const Divider(height: 1, thickness: 1),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: null, icon: Icon(Icons.grid_on, color: Colors.white)),
                IconButton(onPressed: null, icon: Icon(Icons.video_collection_outlined)),
                IconButton(onPressed: null, icon: Icon(Icons.person_pin_outlined)),
              ],
            ),

            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, 
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemCount: 18,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.grey[(index % 9 + 1) * 100],
                  child: Center(
                    child: Icon(
                      Icons.image,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildStatColumn(String label, String count) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          count,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}
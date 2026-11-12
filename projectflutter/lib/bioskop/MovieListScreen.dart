import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class MovieListScreen extends StatelessWidget {
  const MovieListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List movies = [
      {
        'title': 'Ramayana: Rise of Legend',
        'genre': 'Action / Epic',
        'duration': '180 Min',
        'price': 45000,
        'image': 'https://images.unsplash.com/photo-1534447677768-be436bb09401?w=500',
      },
      {
        'title': 'Interstellar Odyssey',
        'genre': 'Sci-Fi / Adventure',
        'duration': '169 Min',
        'price': 40000,
        'image': 'https://images.unsplash.com/photo-1506703719100-a0f3a48c0f86?w=500',
      },
      {
        'title': 'Go For Broke 2',
        'genre': 'Action / Drama',
        'duration': '142 Min',
        'price': 35000,
        'image': 'https://images.unsplash.com/photo-1518709268805-4e9042af9f23?w=500',
      },
      {
        'title': 'Everyone Mobilise',
        'genre': 'Animation / Action',
        'duration': '115 Min',
        'price': 35000,
        'image': 'https://images.unsplash.com/photo-1579783902614-a3fb3927b675?w=500',
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text('BlitzTix - Cinemas'), // Nama sudah diubah ke BlitzTix
        backgroundColor: const Color(0xFF0A192F),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'NOW SHOWING IN CINEMAS',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A192F),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // 4 kolom agar ukuran poster sedang dan pas di layar web
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.65,
                ),
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  final movie = movies[index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.detailScreen,
                        arguments: movie,
                      );
                    },
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(10),
                              ),
                              child: Image.network(
                                movie['image'],
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movie['title'],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Color(0xFF0A192F),
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  movie['genre'],
                                  maxLines: 1,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                SizedBox(
                                  width: double.infinity,
                                  height: 26,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF0A192F),
                                      foregroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        AppRoutes.detailScreen,
                                        arguments: movie,
                                      );
                                    },
                                    child: const Text(
                                      'Pesan',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
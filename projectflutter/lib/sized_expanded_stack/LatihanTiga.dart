import 'package:flutter/material.dart';

class LatihanTiga extends StatelessWidget {
  const LatihanTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          // KARTU PERTAMA: Riska Aulia
          Container(
            height: 72,
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 51, 182, 51),
                  Color.fromARGB(255, 255, 89, 89),
                  Color.fromARGB(255, 255, 121, 121),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 48,
                  height: 48,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://png.pngtree.com/png-clipart/20240812/original/pngtree-cute-panda-standing-with-happy-expression-png-image_15762144.png",
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Riska Aulia",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "XII RPL",
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    const Icon(Icons.notifications, color: Colors.white, size: 28),
                    Positioned(
                      right: 2,
                      top: 2,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 8,
                          minHeight: 8,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
            height: 100,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 51, 182, 51),
                  Color.fromARGB(255, 255, 89, 89),
                  Color.fromARGB(255, 255, 121, 121),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Riska Aulia",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "12 RPL 1",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: 100,
                        height: 25,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 245, 245, 245),
                            foregroundColor: Colors.black,
                            padding: EdgeInsets.zero,
                          ),
                          child: const Text(
                            "Click Me",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
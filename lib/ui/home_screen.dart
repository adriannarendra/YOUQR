import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // List<String, String> ListButton = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(237, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Halo, User 1",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "Software Developer",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome To',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  'YOUQR',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: GridView.count(
            crossAxisCount: 2,
            children: [
              BuildButton(
                  icon: Icons.qr_code,
                  label: 'Create',
                  iconColor: Colors.blue,
                  backgroundColor: const Color.fromARGB(115, 33, 149, 243),
                  onTap: () {
                    Navigator.pushNamed(context, '/create');
                  }),
              BuildButton(
                  icon: Icons.qr_code_scanner,
                  label: 'Scan',
                  iconColor: Colors.red,
                  backgroundColor: const Color.fromARGB(118, 244, 67, 54),
                  onTap: () {
                    Navigator.pushNamed(context, '/scan');
                  }),
              BuildButton(
                  icon: Icons.send,
                  label: 'Send',
                  iconColor: const Color.fromARGB(255, 54, 171, 58),
                  backgroundColor: const Color.fromARGB(100, 76, 175, 79),
                  onTap: () {}),
              BuildButton(
                  icon: Icons.print,
                  label: 'Print',
                  iconColor: Colors.purple,
                  backgroundColor: const Color.fromARGB(97, 155, 39, 176),
                  onTap: () {}),
            ],
          )),
        ],
      ),
    );
  }
}

class BuildButton extends StatelessWidget {
  const BuildButton({
    super.key,
    required this.icon,
    required this.label,
    required this.iconColor,
    required this.backgroundColor,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final Color iconColor;
  final Color backgroundColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 170, // Lebar tetap untuk setiap tombol
        height: 170, // Tinggi tetap untuk setiap tombol

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: backgroundColor, // Warna latar ikon
                borderRadius: BorderRadius.circular(12), // Sudut membulat ikon
              ),
              padding: const EdgeInsets.all(35),
              child: Icon(
                icon,
                color: iconColor, // Warna ikon
                size: 40, // Ukuran ikon lebih besar
              ),
            ),
            const SizedBox(height: 15), // Jarak antara ikon dan teks
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16, // Ukuran teks
              ),
            ),
          ],
        ),
      ),
    );
  }
}

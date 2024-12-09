import 'package:flutter/material.dart';
import 'package:qr_project_skl_3/screen/components/build_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      const AssetImage('assets/images/profile-pict.png'),
                  backgroundColor: Colors.amber.shade400,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hallo Maya',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'UI/UX Designer',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Welcome to',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  'QR S&G',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // Expanded untuk GridView
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  BuildButton(
                    icon: Icons.qr_code_2_sharp,
                    label: 'Create',
                    iconColor: Colors.white,
                    backgroundColor: Colors.blueAccent,
                    onTap: () {
                      Navigator.pushNamed(context, '/create');
                    },
                  ),
                  BuildButton(
                    icon: Icons.qr_code_scanner_sharp,
                    label: 'Scan',
                    iconColor: Colors.red.withOpacity(0.9),
                    backgroundColor: Colors.red.withOpacity(0.5),
                    onTap: () {
                      Navigator.pushNamed(context, '/scan');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

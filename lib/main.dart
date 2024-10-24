import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yummy App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 231, 205, 195),
          foregroundColor: Colors.black,
        ),
      ),
      home: MyHomePage(title: 'Menu makanan khas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('asset/image/yummy.jpg'), // Ganti dengan path gambar Anda
              ),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context); // Menutup drawer
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('asset/image/settings.jpg'), // Ganti dengan path gambar Anda
              ),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context); // Menutup drawer
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('asset/image/about.jpg'), // Ganti dengan path gambar Anda
              ),
              title: Text('About'),
              onTap: () {
                Navigator.pop(context); // Menutup drawer
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    child: _buildRecipeCard(
                      title: 'gado-gado',
                      rating: 5,
                      time: '10 mnt',
                      price: '2 jt',
                      sellerName: 'MAKANAN KHAS',
                      sellerImage: 'asset/logo rumah makan khas jawa.png',
                      isVerified: true,
                      imageUrl: 'asset/gado-gado.jpg',
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Flexible(
                    child: _buildRecipeCard(
                      title: 'Sate ayam',
                      rating: 5,
                      time: '15 mnt',
                      price: '15 rb',
                      sellerName: 'MAKANAN KHAS',
                      sellerImage: 'asset/logo rumah makan khas jawa.png',
                      isVerified: true,
                      imageUrl: 'asset/sate ayam.webp',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Flexible(
                    child: _buildRecipeCard(
                      title: 'rendang',
                      rating: 4.8,
                      time: '3 mnt',
                      price: '20 rb',
                      sellerName: 'MAKANAN KHAS',
                      sellerImage: 'asset/logo rumah makan khas jawa.png',
                      isVerified: true,
                      imageUrl: 'asset/rendang.webp',
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Flexible(
                    child: _buildRecipeCard(
                      title: 'nasi goreng telur',
                      rating: 4.5,
                      time: '10 mnt',
                      price: '13 rb',
                      sellerName: 'MAKANAN KHAS',
                      sellerImage: 'asset/logo rumah makan khas jawa.png',
                      isVerified: true,
                      imageUrl: 'asset/nasi goreng telur.jpg',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRecipeCard({
    required String title,
    required double rating,
    required String time,
    required String price,
    required String sellerName,
    required String sellerImage,
    required bool isVerified,
    required String imageUrl,
  }) {
    return Card(
      color: Color.fromARGB(255, 226, 201, 192),
      elevation: 2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(sellerImage),
                  radius: 20.0,
                ),
                SizedBox(width: 8.0),
                Text(
                  sellerName,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                if (isVerified)
                  Icon(Icons.check_circle, color: Colors.blue, size: 16.0),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              imageUrl,
              width: double.infinity,
              height: 160.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange),
                    Text('$rating'),
                    SizedBox(width: 16.0),
                    Icon(Icons.timer, color: Colors.grey),
                    Text(time),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(Icons.monetization_on, color: Colors.grey, size: 16.0),
                    SizedBox(width: 4.0),
                    Text(price),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

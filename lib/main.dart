import 'package:flutter/material.dart';
import 'barang_page.dart';
import 'ruangan_page.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'landing_page.dart';

void main() {
  runApp(InventarisApp());
}

class InventarisApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inventaris Warehouse',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/dashboard': (context) => DashboardPage(),
      },
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menris'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.inventory),
            title: Text('Barang'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BarangPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.room),
            title: Text('Ruangan'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RuanganPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

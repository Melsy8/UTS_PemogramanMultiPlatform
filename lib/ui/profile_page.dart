import 'package:flutter/material.dart';
import 'package:perpus/ui/login_page.dart';
import 'package:perpus/ui/buku_page.dart';
import 'package:perpus/ui/dashboard_page.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/profile_picture.jpg'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Admin Melsy',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            buildProfileInfo('Nama Lengkap', 'Melsy Luon'),
            buildProfileInfo('Username', 'melsyadmin'),
            buildProfileInfo('Tanggal Lahir', '01 Januari 1990'),
            buildProfileInfo('Alamat', 'Jl. Sidakarya Denpasar'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
              },
              child: Text('Ubah Profil'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.dashboard),
              onPressed: () {
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>DashboardPage())
                  );
              },
            ),
            IconButton(
              icon: Icon(Icons.library_books),
              onPressed: () {
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>DataBukuPage())
                  );
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>ProfilePage())
                  );
              },
            ),
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>LoginPage())
                  );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfileInfo(String label, String value) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[300]!),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

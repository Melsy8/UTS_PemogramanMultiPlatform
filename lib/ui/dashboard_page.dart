import 'package:flutter/material.dart';
import 'package:perpus/ui/login_page.dart';
import 'package:perpus/ui/databuku_page.dart';
import 'package:perpus/ui/profile_page.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = 3;

    if (screenWidth <= 600) {
      crossAxisCount = 2;
    } else if (screenWidth <= 1200) {
      crossAxisCount = 2;
    } else {
      crossAxisCount = 3; 
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 100),
            Center(
              child: Text(
                'Selamat datang, Admin!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20), 
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.count(
                  crossAxisCount: crossAxisCount,
                  children: <Widget>[
                    DashboardSummaryCard(
                      title: 'Jumlah Buku',
                      value: '100',
                    ),
                    DashboardSummaryCard(
                      title: 'Jumlah Peminjam',
                      value: '50',
                    ),
                    DashboardSummaryCard(
                      title: 'Jumlah Member',
                      value: '200',
                    ),
                    DashboardSummaryCard(
                      title: 'Jumlah Admin',
                      value: '10',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
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
}

class DashboardSummaryCard extends StatelessWidget {
  final String title;
  final String value;

  DashboardSummaryCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(16),
      color: Colors.blue[100],
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              textAlign: TextAlign.center,
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue[800]),
            ),
            SizedBox(height: 8),
            Text(
              textAlign: TextAlign.center,
              value,
              style: TextStyle(fontSize: 24, color: Colors.blue[800]),
            ),
          ],
        ),
      ),
    );
  }
}

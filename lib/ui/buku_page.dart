import 'package:flutter/material.dart';
import 'package:perpus/ui/login_page.dart';
import 'package:perpus/ui/dashboard_page.dart';
import 'package:perpus/ui/profile_page.dart';
import 'package:perpus/ui/databuku_page.dart';

class DataBukuPage extends StatelessWidget {
  final List<Map<String, dynamic>> jenisBuku = [
    {
      'jenis': 'Fiksi',
      'buku': [
        {'judul': 'To Kill a Mockingbird', 'penulis': 'Harper Lee', 'tahun': '1960'},
        {'judul': '1984', 'penulis': 'George Orwell', 'tahun': '1949'},
        {'judul': 'The Great Gatsby', 'penulis': 'F. Scott Fitzgerald', 'tahun': '1925'},
        {'judul': 'Pride and Prejudice', 'penulis': 'Jane Austen', 'tahun': '1813'},
      ],
    },
    {
      'jenis': 'Non-Fiksi',
      'buku': [
        {'judul': 'Sapiens: A Brief History of Humankind', 'penulis': 'Yuval Noah Harari', 'tahun': '2011'},
        {'judul': 'The Omnivores Dilemma', 'penulis': 'Michael Pollan', 'tahun': '2006'},
        {'judul': 'Quiet: The Power of Introverts in a World That Cant Stop Talking', 'penulis': 'Susan Cain', 'tahun': '2012'},
      ],
    },
    {
      'jenis': 'Pendidikan',
      'buku': [
        {'judul': 'Pedagogy of the Oppressed', 'penulis': 'Paulo Freire', 'tahun': '1968'},
        {'judul': 'The Teacher Wars: A History of Americas Most Embattled Profession', 'penulis': 'Dana Goldstein', 'tahun': '2014'},
        {'judul': 'Mindset: The New Psychology of Success', 'penulis': 'Carol S. Dweck', 'tahun': '2006'},
      ],
    },
    {
      'jenis': 'Biografi',
      'buku': [
        {'judul': 'Steve Jobs', 'penulis': 'Walter Isaacson', 'tahun': '2011'},
        {'judul': 'Leonardo da Vinci', 'penulis': 'Walter Isaacson', 'tahun': '2017'},
        {'judul': 'Einstein: His Life and Universe', 'penulis': 'Walter Isaacson', 'tahun': '2007'},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Buku'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: jenisBuku.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              margin: EdgeInsets.only(bottom: 16),
              child: ExpansionTile(
                title: Text(
                  jenisBuku[index]['jenis'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: jenisBuku[index]['buku'].map<Widget>((buku) {
                  return ListTile(
                    title: Text(buku['judul']),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${buku['penulis']} Tahun ${buku['tahun']} ')
                      ],
                    ),
                  );
                }).toList(),
              ),
            );
          },
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, 
            MaterialPageRoute(builder: (context)=>TambahBuku())
            );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
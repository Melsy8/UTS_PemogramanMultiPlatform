import 'package:flutter/material.dart';

class TambahBuku extends StatefulWidget {
  const TambahBuku({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TambahBukuState createState() => _TambahBukuState();
}

class _TambahBukuState extends State<TambahBuku> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final TextEditingController _publisherController = TextEditingController();

  final List<String> _buku = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Data Buku'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Judul Buku',
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _authorController,
              decoration: const InputDecoration(
                labelText: 'Penulis',
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _publisherController,
              decoration: const InputDecoration(
                labelText: 'Penerbit',
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                String judul = _titleController.text;
                String penulis = _authorController.text;
                String penerbit = _publisherController.text;

                _buku.add('$judul - $penulis - $penerbit');

                setState(() {
                  _titleController.text = '';
                  _authorController.text = '';
                  _publisherController.text = '';
                });
              },
              child: const Text('Tambah Buku'),
            ),
            const SizedBox(height: 20.0),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _buku.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_buku[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

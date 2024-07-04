import 'package:flutter/material.dart';
import '../model/Pegawai.dart';
import 'Pegawai_Detail.dart';

class PagePegawei extends StatefulWidget {
  const PagePegawei({super.key});

  @override
  _PagePegawaiState createState() => _PagePegawaiState();
}

class _PagePegawaiState extends State<PagePegawei> {
  final List<Pegawai> _pegawai = [
    Pegawai(
      id: '1',
      nip: '12220801',
      nama: 'Afif Rahardi',
      tanggal_lahir: '2004-02-17',
      nomor_telepon: '081336135496',
      email: 'Rahardi63@gmail.com',
      password: 'afifrahardi63',     
    ),
    Pegawai(
      id: '2',
      nip: '12220907',
      nama: 'David Fauzan',
      tanggal_lahir: '2004-04-05',
      nomor_telepon: '087706574312',
      email: 'Davidfauzan@gmail.com',
      password: 'Fauzan63',
      ),
    Pegawai(
      id: '3',
      nip: '12120906',
      nama: 'Naufal Zul',
      tanggal_lahir: '2004-06-09',
      nomor_telepon: '086409876785',
      email: 'Naufalzull@gmail.com',
      password: 'Naufalzull10',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data_Pegawai"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: _pegawai.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_pegawai[index].nama),
            subtitle: Text("NIP : ${_pegawai[index].nip}"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PegawaiDetail(pegawai: _pegawai[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
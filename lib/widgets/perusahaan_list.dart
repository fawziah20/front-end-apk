part of 'widgets.dart';

class PerusahaanList extends StatelessWidget {
  final Perusahaan pt;

  PerusahaanList({@required this.pt});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            "Syarat Umum",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Text(pt.syaratumum),
        Container(
          child: Text(
            "Syarat Khusus",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Text(pt.syaratkhusus),
      ],
    );
  }
}

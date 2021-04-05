part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.only(bottom: 30),
      child: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 200,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 32, left: 24),
                    child: Text(
                      "Untuk Kamu",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 144,
                    height: 20,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(top: 24),
                    child: Text(
                      "Lihat Semua",
                      style: TextStyle(
                        fontSize: 10,
                        decoration: TextDecoration.underline,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 10,
                ),
                height: 172,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: mockPerusahaan
                          .map((e) => Rekomendasi(perusahaan: e))
                          .toList(),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 24, left: 24),
                child: Text(
                  "Lowongan Terbaru",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: mockPerusahaan
                    .map((e) => LowonganBaru(lowongan: e))
                    .toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

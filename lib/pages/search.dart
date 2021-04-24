part of "pages.dart";

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(defaultMargin),
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Text(
              "Cari Pekerjaan",
              style: blackFontStyle.copyWith(color: Colors.black, fontSize: 18),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.only(top: defaultMargin),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: new Icon(Icons.search),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 16),
              child: Text(
                "Pilih Lokasi",
                style: blackFontStyle3,
              )),
        ],
      ),
    );
  }
}

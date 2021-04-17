part of "pages.dart";

class Kebijakan extends StatefulWidget {
  @override
  _KebijakanState createState() => _KebijakanState();
}

class _KebijakanState extends State<Kebijakan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: blueColors,
        toolbarHeight: 96,
        title: Text(
          "Kebijakan",
          style: blackFontStyle3.copyWith(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(24, 24, 24, 10),
              child: Text(
                "Kebijakan",
                style: blackFontStyle3,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 0, 24, 24),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis scelerisque condimentum elit metus ornare viverra lacus. Posuere mattis quis tellus sed sed diam. Vestibulum, eget non morbi nulla erat eu nulla. Parturient donec neque facilisis nulla gravida. Gravida tellus ultrices mattis suscipit cursus neque diam. Eget id at aliquam senectus. Egestas sed sem tincidunt facilisi at feugiat. Sed at quisque scelerisque mus netus risus. Quam feugiat enim et risus metus, volutpat et ut. Eu sit vitae bibendum in. Vulputate tincidunt et nulla amet, ut ipsum. Dictum netus sit lectus massa augue commodo fermentum, aenean Feugiat viverra vulputate id ut mattis aliquet cum. Lectus mauris libero nec nisl nunc massa aliquam neque. Dictum dictum sollicitudin ipsum in consectetur vel. Scelerisque lacus mattis felis risus eget pulvinar consequat.",
                style: blackFontStyle3.copyWith(fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

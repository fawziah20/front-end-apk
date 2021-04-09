part of 'pages.dart';

class BookmarkPage extends StatefulWidget {
  @override
  _BookmarkPageState createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  @override
  Widget build(BuildContext context) {
    //return IllustrationPage();
    return Container(
        margin: EdgeInsets.only(bottom: 38),
        child: ListView(
            children: mockUserSave.map((e) => Save(save: e)).toList()));
  }
}

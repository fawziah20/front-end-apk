part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color bgColor = "8D92A3".toColor();

  int selectedPage = 0;

  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: CustomSidebar(),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: "528FFF".toColor(),
        title: Container(
            alignment: Alignment.center,
            child: Builder(builder: (_) {
              if (selectedPage == 0) {
                return Text(
                  "Beranda",
                  style: blackFontStyle,
                );
              } else if (selectedPage == 1) {
                return Text(
                  "Bookmark",
                  style: blackFontStyle,
                );
              } else {
                return Text("");
              }
            })),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 30.0),
              child: GestureDetector(
                child: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    return showGeneralDialog(
                      context: context,
                      barrierDismissible: true,
                      transitionDuration: Duration(milliseconds: 500),
                      barrierLabel:
                          MaterialLocalizations.of(context).dialogLabel,
                      barrierColor: Colors.black.withOpacity(0.5),
                      pageBuilder: (context, _, __) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              color: Colors.white,
                              child: Card(
                                child: ListView(
                                  shrinkWrap: true,
                                  children: <Widget>[
                                    ListTile(
                                      title: Text('Item 1'),
                                      onTap: () =>
                                          Navigator.of(context).pop('item1'),
                                    ),
                                    ListTile(
                                      title: Text('Item 2'),
                                      onTap: () =>
                                          Navigator.of(context).pop('item2'),
                                    ),
                                    ListTile(
                                      title: Text('Item 3'),
                                      onTap: () =>
                                          Navigator.of(context).pop('item3'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      transitionBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return SlideTransition(
                          position: CurvedAnimation(
                            parent: animation,
                            curve: Curves.easeOut,
                          ).drive(Tween<Offset>(
                            begin: Offset(0, -1.0),
                            end: Offset.zero,
                          )),
                          child: child,
                        );
                      },
                    );
                  },
                ),
              )),
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.black,
          ),
          SafeArea(
              child: Container(
            color: Colors.white,
          )),
          SafeArea(
              child: PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                selectedPage = index;
              });
            },
            children: [
              HomePage(),
              BookmarkPage(),
              ProfilePage(),
            ],
          )),
          Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomNavbar(
                  selectedIndex: selectedPage,
                  onTap: (index) {
                    setState(() {
                      selectedPage = index;
                    });
                    pageController.jumpToPage(selectedPage);
                  }))
        ],
      ),
    );
  }
}

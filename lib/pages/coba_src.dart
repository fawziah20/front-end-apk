part of 'pages.dart';

class CobaSrc extends StatefulWidget {
  @override
  _CobaSrcState createState() => _CobaSrcState();
}

class _CobaSrcState extends State<CobaSrc> {
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
                return Text("Beranda");
              } else if (selectedPage == 1) {
                return Text("Bookmark");
              } else {
                return Text("");
              }
            })),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 26.0,
                  ),
                  onPressed: () {
                    showSearch(context: context, delegate: Search());
                  })),
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

class Search extends SearchDelegate<Perusahaan> {
  String get searchFieldLabel => "Cari disini";

  TextStyle get searchFieldStyle => TextStyle(
      fontFamily: "blackFontStyle3",
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.normal);

  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme;

    // assert(context != null);
    // final ThemeData theme = Theme.of(context);
    // // final ColorScheme colorScheme = theme.colorScheme;

    // // assert(theme != null);
    // return theme.copyWith(
    //     primaryColor: "528FFF".toColor(),
    //     hintColor: Colors.white,
    //     inputDecorationTheme: InputDecorationTheme(

    //       labelStyle: TextStyle(
    //           fontFamily: "blackFontStyle3",
    //           color: Colors.white,
    //           fontSize: 14,
    //           fontWeight: FontWeight.normal),
    //       hintStyle: TextStyle(
    //           fontFamily: "blackFontStyle3",
    //           color: Colors.white,
    //           fontSize: 14,
    //           fontWeight: FontWeight.normal),
    //       fillColor: Colors.white54,
    //       filled: true,
    //     ),
    //     appBarTheme: AppBarTheme(
    //       textTheme: theme.textTheme.copyWith(
    //           headline6: TextStyle(
    //               fontFamily: "blackFontStyle3",
    //               color: Colors.white,
    //               fontSize: 14,
    //               fontWeight: FontWeight.normal)),
    //       brightness: Brightness.dark,
    //       backgroundColor: "528FFF".toColor(),
    //       iconTheme: theme.primaryIconTheme.copyWith(color: Colors.white),
    //     )

    // appBarTheme: AppBarTheme(
    //   elevation: 0,
    //   brightness: colorScheme.brightness,
    //   backgroundColor: colorScheme.brightness == Brightness.dark
    //       ? Colors.grey[900]
    //       : "528FFF".toColor(),
    //   iconTheme: theme.primaryIconTheme.copyWith(color: Colors.white),
    //   textTheme: theme.textTheme,
    // ),
    // inputDecorationTheme: searchFieldDecorationTheme ??
    //     InputDecorationTheme(
    //       hintStyle: TextStyle(
    //           fontFamily: "blackFontStyle3",
    //           color: Colors.white,
    //           fontSize: 14,
    //           fontWeight: FontWeight.normal),
    //       border: InputBorder.none,
    //     ),
    // );
  }

  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child: Text(query));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final mylist = query.isEmpty
        ? mockPerusahaan
        : mockPerusahaan
            .where((e) => e.posisi.toLowerCase().contains(query.toLowerCase()))
            .toList();
    return mylist.isEmpty
        ? Text("tidak ditemukan")
        : ListView.builder(
            itemCount: mylist.length,
            itemBuilder: (context, index) {
              final Perusahaan job = mylist[index];
              return ListTile(
                onTap: () {
                  showResults(context);
                },
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(job.posisi), Text(job.nama)],
                ),
              );
            });
  }
}

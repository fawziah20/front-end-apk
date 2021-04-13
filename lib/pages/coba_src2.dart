part of 'pages.dart';

class CobaSrc2 extends StatefulWidget {
  @override
  _CobaSrc2State createState() => _CobaSrc2State();
}

class _CobaSrc2State extends State<CobaSrc2> {
  Color bgColor = "8D92A3".toColor();
  // bool _visible = false;
  int selectedPage = 0;

  // void showToast() {
  //   setState(() {
  //     _visible = !_visible;
  //   });
  // }

  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
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
                  child: GestureDetector(
                    onTap: () {
                      return SnappingSheet(
                        snappingPositions: [
                          SnappingPosition.factor(
                            positionFactor: 0.0,
                            snappingCurve: Curves.easeOutExpo,
                            snappingDuration: Duration(seconds: 1),
                            grabbingContentOffset: GrabbingContentOffset.top,
                          ),
                          SnappingPosition.pixels(
                            positionPixels: 400,
                            snappingCurve: Curves.elasticOut,
                            snappingDuration: Duration(milliseconds: 1750),
                          ),
                          SnappingPosition.factor(
                            positionFactor: 1.0,
                            snappingCurve: Curves.bounceOut,
                            snappingDuration: Duration(seconds: 1),
                            grabbingContentOffset: GrabbingContentOffset.bottom,
                          ),
                        ],
                        sheetAbove: SnappingSheetContent(
                          sizeBehavior: SheetSizeFill(),
                          draggable: false,
                          child: Container(color: Colors.blue),
                        ),
                        child: Container(),
                      );
                    },
                    child: Icon(
                      Icons.search,
                      size: 26.0,
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
                      })),
            ],
          ),
        ),
        // Visibility(
        //     visible: _visible,
        //     child: Container(
        //         child: GestureDetector(
        //           onTap: () {
        //             showToast();
        //           },
        //         ),
        //         decoration: BoxDecoration(
        //           color: Colors.black12,
        //         ))),
        // Visibility(
        //   visible: _visible,
        //   child: Container(
        //     height: MediaQuery.of(context).size.height * 0.75,
        //     width: double.infinity,
        //     decoration: BoxDecoration(
        //         color: Colors.white,
        //         borderRadius: BorderRadius.only(
        //             bottomRight: Radius.circular(30),
        //             bottomLeft: Radius.circular(30))),
        //   ),
        // )
      ],
    );
  }

  // Widget _buildPopupDialog(BuildContext context) {
  //   return new AlertDialog(
  //     title: const Text('Popup example'),
  //     content: new Column(
  //       mainAxisSize: MainAxisSize.min,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         Text("Hello"),
  //       ],
  //     ),
  //     actions: <Widget>[
  //       new FlatButton(
  //         onPressed: () {
  //           Navigator.of(context).pop();
  //         },
  //         textColor: Theme.of(context).primaryColor,
  //         child: const Text('Close'),
  //       ),
  //     ],
  //   );
  // }
}

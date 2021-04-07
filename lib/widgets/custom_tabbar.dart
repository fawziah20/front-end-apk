part of 'widgets.dart';

class CustomTabbar extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  final Function(int) onTap;

  CustomTabbar({@required this.titles, this.selectedIndex, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Stack(
        children: [
          Row(
              children: titles
                  .map((e) => Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (onTap != 0) {
                                  onTap(titles.indexOf(e));
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: (titles.indexOf(e) == selectedIndex)
                                      ? "528FFF".toColor()
                                      : "E6EDF4".toColor(),
                                ),
                                child: Text(
                                  e,
                                  style: (titles.indexOf(e) == selectedIndex)
                                      ? TextStyle(color: Colors.white)
                                      : TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ))
                  .toList())
        ],
      ),
    );
  }
}

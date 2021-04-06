part of 'widgets.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  CustomBottomNavbar({this.selectedIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5,
            offset: Offset(
              2,
              2,
            ),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(0);
              }
            },
            child: Container(
              width: 20,
              height: 20,
              margin: EdgeInsets.only(left: 45),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/home' +
                        ((selectedIndex == 0) ? '.png' : '_normal.png'),
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(1);
              }
            },
            child: Container(
              width: 20,
              height: 20,
              margin: EdgeInsets.symmetric(horizontal: 104),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/simpan' +
                        ((selectedIndex == 1) ? '.png' : '_normal.png'),
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(2);
              }
            },
            child: Container(
              width: 20,
              height: 20,
              margin: EdgeInsets.only(right: 45),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/profil' +
                        ((selectedIndex == 2) ? '.png' : '_normal.png'),
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

part of 'pages.dart';

class IllustrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/maaf.png'), fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              padding: EdgeInsets.symmetric(horizontal: 44),
              child: Text(
                "Yah, Kami belum kenal sama kamu. Kamu harus Log In/Register dulu supaya bisa menggunakan fitur ini.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: "A5B2C2".toColor(),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 125),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: "75A6FF".toColor(),
              ),
              child: Text("Register di Sini",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
            ),
          ],
        ));
  }
}

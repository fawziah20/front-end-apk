part of 'pages.dart';

class PerusahaanDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: "528FFF".toColor(),
                        ),
                        child: Text(
                          "Deskripsi",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 12),
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: "E6EDF4".toColor(),
                        ),
                        child: Text(
                          "Fasilitas",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Text(
                      "Syarat Umum",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum.",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text(
                      "Syarat Khusus",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    padding: EdgeInsets.only(bottom: 50),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum.",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: CustomBottomLamaran(),
        ),
      ],
    );
  }
}

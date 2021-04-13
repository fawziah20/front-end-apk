part of 'pages.dart';

class Sliver extends StatefulWidget {
  @override
  _SliverState createState() => _SliverState();
}

class _SliverState extends State<Sliver> {
  bool _floating = true;
  bool _pinned = true;
  bool _snap = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 224,
            backgroundColor: Colors.transparent,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: ['75A6FF'.toColor(), '528FFF'.toColor()]),
                borderRadius: BorderRadius.circular(8),
                color: Colors.black,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  )
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              child: Center(
                  child: Text('Scroll to See the SliverAppBar in Effect')),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              children: <Widget>[
                const Text('pinned'),
                Switch(
                  onChanged: (bool val) {
                    setState(() {
                      _pinned = val;
                    });
                  },
                  value: _pinned,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const Text('snap'),
                Switch(
                  onChanged: (bool val) {
                    setState(() {
                      _snap = val;
                      _floating = _floating || _snap;
                    });
                  },
                  value: _snap,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const Text('floating'),
                Switch(
                  onChanged: (bool val) {
                    setState(() {
                      _floating = val;
                      _snap = _snap && _floating;
                    });
                  },
                  value: _floating,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

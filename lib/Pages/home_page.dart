import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xffFD96A3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 0,
        title: Text("Home",
            style: GoogleFonts.aBeeZee(fontSize: 22.0, letterSpacing: 1.2)),
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: Text(
              "upgrade",
              style: GoogleFonts.aBeeZee(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: Icon(Icons.support_agent_rounded),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Expanded(child: Text("Your Profile is Pending Verification")),
                ElevatedButton(onPressed: () {}, child: Text("Verify Now"))
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 1,
                itemCount: 100,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                itemBuilder: (context, index) {
                  return Container(
                    height: 250,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            // Image.network("src"),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            ),
          )
        ],
      ),
    );
  }
}

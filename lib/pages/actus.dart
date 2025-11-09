import 'package:flutter/material.dart';

class ActusPage extends StatefulWidget {
  const ActusPage({super.key});

  @override
  State<ActusPage> createState() => _ActusPageState();
}

class _ActusPageState extends State<ActusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Actus",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
        actions: [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 7),
          Icon(Icons.more_vert, color: Colors.white),
          SizedBox(width: 7),
          Icon(Icons.person, color: Colors.white),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          //Status section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Status",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 90,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 12,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 90,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.unsplash.com/photo-1615458509636-856366d3396e?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8c3R1ZGlvJTIwZGUlMjBwaG90b2dyYXBoaWV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&q=60&w=900",
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

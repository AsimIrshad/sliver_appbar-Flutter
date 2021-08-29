import 'package:flutter/material.dart';

class sliver_appbar extends StatelessWidget {
  //const sl({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.red,
            expandedHeight: 200,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://source.unsplash.com/random?monochromatic+dark',
                fit: BoxFit.cover,
              ),
              title: Text('Flexible Title'),
              centerTitle: true,
            ),
            //title: Text('My App Bar'),
            leading: Icon(Icons.arrow_back),
            actions: [
              Icon(Icons.settings),
              SizedBox(width: 12),
            ],
          ),
          SliverToBoxAdapter(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              primary: false,
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (context, index) => Container(
                child: Image.network(
                  'https://images.unsplash.com/photo-1494145904049-0dca59b4bbad?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YnVpbGRpbmdzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

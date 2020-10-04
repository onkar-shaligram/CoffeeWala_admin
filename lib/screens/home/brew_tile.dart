import 'package:flutter/material.dart';
import 'package:coffeewala_admin/models/brew.dart';

class BrewTile extends StatelessWidget {
  final Brew brew;
  BrewTile({this.brew});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.brown[brew.strength],
          ),
          title: Text(brew.name),
          subtitle: Wrap(children: [
            Text('${brew.sugars} sugar packet(s) | '),
            Text(' ${brew.coffees} | '),
            Text(' ${brew.strength} |'),
            Text(' Snacks - ${brew.snacks}'),
          ],),
          onTap: () {
            
          },
        ),
      ),
    );
  }
}

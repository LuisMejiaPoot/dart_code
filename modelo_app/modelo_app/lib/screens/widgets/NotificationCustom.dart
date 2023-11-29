import 'package:flutter/material.dart';

class NotificationCustom extends StatelessWidget {
  NotificationCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: Column(children: [
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("Titulo"),
          subtitle: Text(
            "Ex voluptate voluptate ad nostrud dolor est tempor nostrud anim ullamco ea adipisicing. Nisi commodo excepteur quis irure do dolore dolor laboris. Qui est tempor ipsum eiusmod irure deserunt.",
          ),
          trailing: Icon(Icons.more_vert),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text("Cancelar"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Aceptar"),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

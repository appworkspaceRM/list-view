import 'package:flutter/material.dart';

class ListViewSeparate extends StatelessWidget {
  const ListViewSeparate({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider(
          color: Colors.black,
        );
      },
      itemCount: 100,
      itemBuilder: (context, index) {
        return Container(
          height: 400,
          color: Colors.blue,
        );
      },
    );
  }
}

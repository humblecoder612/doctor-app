import 'package:flutter/material.dart';

class PrescriptionItem extends StatefulWidget {
  String lastWords;
  bool expanded;
  String title;

  PrescriptionItem({this.lastWords, this.expanded, this.title});

  @override
  _PrescriptionItemState createState() => _PrescriptionItemState();
}

class _PrescriptionItemState extends State<PrescriptionItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      margin: const EdgeInsets.symmetric(vertical:8, horizontal: 12),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              widget.title,
              style: TextStyle(
                color: Theme.of(context).textTheme.title.color,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: IconButton(
              icon:
                  Icon(widget.expanded ? Icons.expand_less : Icons.expand_more),
              onPressed: () {
                setState(() {
                  widget.expanded = !widget.expanded;
                });
              },
            ),
          ),
          if (widget.expanded)
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(widget.lastWords),
            ),
        ],
      ),
    );
  }
}

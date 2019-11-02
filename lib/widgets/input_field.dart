import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label;
  final String content;
  final IconData icon;

  final border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(90.0)),
      borderSide: BorderSide(
        color: Colors.transparent,
      )
  );

  InputField({this.label, this.content, this.icon});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: <Widget>[
            Container(
              width: 80.0,
              child: Text(
                "$label",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.red
                ),
              ),
            ),
            SizedBox(
              width: 40.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3.7,
              child:  Theme(
                data: Theme.of(context).copyWith(
                  cursorColor: Colors.white,
                  hintColor: Colors.transparent,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: border,
                      border: border,
                      prefixIcon: Icon(
                        this.icon,
                        color: Colors.white,
                      ),
                      hintStyle: TextStyle(
                          color: Colors.white, fontFamily: "WorkSansLight"),
                      filled: true,
                      fillColor: Colors.red,
                      hintText: "$content"),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

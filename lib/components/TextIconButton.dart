
import 'package:flutter/material.dart';

class ButtonTextIcon extends StatelessWidget {

  final Color color;
  final String texto;
  final IconData icon;
  final VoidCallback callback;

  const ButtonTextIcon({Key key, this.color = Colors.indigo,
    this.texto = "Clique aqui", this.icon = Icons.dashboard, this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
      child: GestureDetector(
        onTap: callback,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.blueGrey..withOpacity(0.5),
                    offset: Offset(0.0, 2.0),
                    blurRadius: 10)
              ],
              color: color),
          width: double.infinity,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Icon(
                    icon,
                    color: Colors.white,
                  )),
              Expanded(
                  flex: 3,
                  child: Text(
                    texto,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
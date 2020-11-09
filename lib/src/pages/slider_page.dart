import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  bool _bloquearCheck = false;
  double _valorSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sliders"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            _crearSlider(),
            _checkBok(),
            _crearImagen()
            
          ],
        ),
      ),
    );
  }

 Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
        label: _valorSlider.toString(),
     //   divisions: 20,
        value: _valorSlider,
        max: 200,
        min: 10,
        onChanged: (_bloquearCheck) ? null : (valor) {
          setState(() {
            _valorSlider = valor;
            print(valor);
          });

    });
 }

 Widget _checkBok() {
    return Checkbox(
        value: _bloquearCheck,
        onChanged: (valor){
          setState(() {
            _bloquearCheck = valor;
          });

    },
    );

    return SwitchListTile(
      title: Text("Bloquear slider"),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });

      },
    );

    return CheckboxListTile(
      title: Text("Bloquear slider"),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });

      },
    );
 }

 Widget _crearImagen() {
    return Image (
      image: NetworkImage("https://i1.wp.com/wipy.tv/wp-content/uploads/2020/01/este-comic-podria-ser-la-respuesta-para-mpiderman-del-mcu-2020-01-30T175932.733.jpg?resize=1000%2C600&ssl=1"),
      width: _valorSlider,
      height: _valorSlider,
    );
    }
 }

 


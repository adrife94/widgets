import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = "";
  String _email = "";
  String _contrasena = "";
  String _fecha = "";
  String _opcionSeleccionada = "Volar";

  TextEditingController _inputFieldDateController = new TextEditingController();

  List <String> _poderes = ["Volar", "Rayos", "Regeneracion", "Fuerza"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs de texto"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearContrasena(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropDown(),
          Divider(),
          _crearPersona(),
        ],
      )
    );
  }

  Widget _crearInput() {
    return TextField(
     // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras: ${_nombre.length}'),
        hintText: "Nombre de la persona",
        labelText: "Nombre",
        helperText: "Solo el nombre",
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });

      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text("El nombre es $_nombre"),
      subtitle: Text("El email es : $_email"),
      trailing: Text(_opcionSeleccionada),
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,  //hace que al sacar el teclado aparezca el @
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras: ${_nombre.length}'),
        hintText: "Escribe el email",
        labelText: "Email",
        helperText: "Solo el email",
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });

      },
    );
  }

 Widget _crearContrasena() {
   return TextField(
     obscureText: true,
     decoration: InputDecoration(
       border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(20.0)
       ),
       hintText: "Escribe la contraseña",
       labelText: "Password",
       helperText: "Solo la contraseña",
       suffixIcon: Icon(Icons.accessibility),
       icon: Icon(Icons.account_circle),
     ),
     onChanged: (valor) {
       setState(() {
         _contrasena = valor;
       });

     },
   );
 }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: "Fecha de nacimiento",
        labelText: "Fecha de nacimiento",
        suffixIcon: Icon(Icons.calendar_today),
        icon: Icon(Icons.calendar_today),
      ),
     onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate( context);

      },
    );
  }

   _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2018),
        lastDate: new DateTime(2025),
      locale: Locale('es', 'ES')
    );

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = new List();
    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
          child: Text(poder),
          value: poder,
      ));
    });
    return lista;
}

  Widget _crearDropDown() {
    return Row(
      children: [
        Icon(Icons.select_all),
        SizedBox(width: 30.0,),
        DropdownButton(

          items: getOpcionesDropdown(),
          onChanged: (opt) {
            setState(() {
              _opcionSeleccionada = opt;
            });


          },
          value: _opcionSeleccionada,
        )

      ],
    );

  }
}

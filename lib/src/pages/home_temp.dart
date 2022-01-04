import 'package:flutter/material.dart';
class HomePageTemp extends StatelessWidget {
  
  final opciones = ['Uno', 'Dos','Tres','Cuatro','Cinco'];
  final frutas=['Manzana','Naranja','Melon','Toronja','Durazno'];
  final alumnos=['Antonio','Carla','Marco','Stael','Rosa'];

  final materias=['Desarrollo Web','Programacion','Calculo','Algebra Lineal'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Componentes Temp'),
      ),
      body: ListView(
        //children: _crearItems()
        //children: _crearItemsCorta()
        //children: _crearItemsFrutas(),
        //children: _crearItemsAlumnos(),
        children: _crearItemsMaterias(),
      ),
    );
  }

  List<Widget> _crearItems(){
    List<Widget> lista = new List<Widget>();

    for(var opt in opciones){
      final tempWidget=ListTile(
        title: Text(opt),
      ); 

      lista..add(tempWidget)
           ..add(Divider());
    }
    return lista;
  }
  List<Widget> _crearItemsFrutas(){
     List<Widget>listaFruta=new List<Widget>();

     for(var fruta in frutas){
       final tempFruta=ListTile(
         title:Text(fruta),
         subtitle: Text('La fruta es Sana'),
         leading: Icon(Icons.favorite),
         trailing: Icon(Icons.keyboard_arrow_right),
         onTap: (){},
       );

       listaFruta..add(tempFruta)
                ..add(Divider());
     }
     return listaFruta;
  }

  List<Widget> _crearItemsAlumnos(){
    List<Widget>listaAlumno=new List<Widget>();

    for(var alumno in alumnos){
      final tempAlumno=ListTile(
        title:Text(alumno),
        subtitle: Text('Alumno Destacado'),
        leading: Icon(Icons.feedback),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){},
      );

      listaAlumno..add(tempAlumno)
                 ..add(Divider());
    }
    return listaAlumno;
  }
  
  List<Widget> _crearItemsMaterias(){
    List<Widget>listaMateria=new List<Widget>();

    for(var materia in materias){
      final tempMateria=ListTile(
        title:Text(materia),
        subtitle:Text('Materias de Ingenieria'),
        leading:Icon(Icons.inbox),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){},
      );
      listaMateria..add(tempMateria)
                  ..add(Divider());
    }
    return listaMateria;
  }



  List<Widget> _crearItemsCorta(){
    return opciones.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title:Text(item + '!' ),
            subtitle: Text('Cualquier Cosa'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            
          ),
          Divider()
        ],
      );
    }).toList();
    
  }

  
}
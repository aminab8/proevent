import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/dropdown.dart';
import '../component/custom_scafflod.dart';
import 'package:date_field/date_field.dart';
class AddEvents extends StatefulWidget{
  const AddEvents({super.key }) ;
  @override
  State<StatefulWidget> createState() => _AddEventsState();}

class _AddEventsState  extends  State<AddEvents>{
// pour enregistrer chaque champ
  final _formkey = GlobalKey<FormState>();
  String selectedtypevents = 'Conferences';
  final  eventNameController = TextEditingController();
   final deptController = TextEditingController();
    final lieuController = TextEditingController();
  final  dateController = TextEditingController();
  get validator => null;
  @override
  Widget build(BuildContext context) {
    return CustomScafflod(
      child:Column(
    children: [
        Expanded(
        flex: 1,
        child:   Container(
        decoration:   BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10.0),
         topRight: Radius.circular(10.0),),
    ),
      child:
      Form(
        key: _formkey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        TextFormField(
            decoration: InputDecoration(
              labelText: 'nom event',
              hintText: 'entrer le nom d event',
              border: OutlineInputBorder(),
            ),
            validator : (value){
              if(value==null || value.isEmpty){
                return " tu dois compléter ce texte";
              }
              return null;
            }
        ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'nom departement / ensemble d entreprise ',
              hintText: 'entrer le nom d departement',
              border: OutlineInputBorder(),
            ),
              validator : (value){
                if(value==null || value.isEmpty){
                  return " tu dois compléter ce texte";
                }
                return null;
              }
          ),
          const SizedBox(height: 15),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: DropdownButtonFormField(
                items: const[
                  DropdownMenuItem(value: 'Conferences',child : Text("Conférences")),
                  DropdownMenuItem(value: 'Reunions',child : Text("Réunions")),
                  DropdownMenuItem(value: 'Seminaires',child : Text("Séminaires")),
                  DropdownMenuItem(value: 'Soires de gala',child : Text("Soirés de gala")),
                ],
                decoration: InputDecoration(
                    border: OutlineInputBorder()
                ),
                value: selectedtypevents,
                onChanged: (value){
                  setState(() {
                    selectedtypevents = value! ;
                  });
                }
            ),
          ),
          const SizedBox(height: 10,),
          DateTimeFormField(
            decoration: const InputDecoration(
              hintStyle: TextStyle(color: Colors.black),
              errorStyle:  TextStyle(color: Colors.red),
              border:  OutlineInputBorder(),
              suffixIcon: Icon(Icons.event_note),
              labelText: 'Enter Date',
            ),
            mode: DateTimeFieldPickerMode.dateAndTime,
            autovalidateMode: AutovalidateMode.always,
            validator: (e)=>(e?.day ??0)== 1? 'please not the first day' : null,
            onChanged: (DateTime? value) {
              print(value);
          },
          ),
            SizedBox(
              height: 50,
               width: double.infinity,
            child:
            ElevatedButton(onPressed: () {
              if (_formkey.currentState!.validate()) {
                final eventName = eventNameController.text;
                final dept = deptController.text;
                final lieu = lieuController.text;
                final date = dateController.text;
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text(("Envoi en cours ..."))
                  ),);
                FocusScope.of(context).requestFocus(FocusNode());
                print(
                    "ajouter l evenment $eventName en sépcifiant nom departement $dept par le lieu $lieu et la date $date");
                print("type d events $selectedtypevents");
              }
            },
          child: Text("Envoyer")),
            ),
      ],),
    ),
    ),
    ),
      ],),
    );
  }
  }

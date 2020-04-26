import 'package:flutter/material.dart';

class Elements{
  final String id;
  final String name;
  final String description;

  const Elements({this.id,this.name,this.description});
}


List<Elements> elements=[
  const Elements(
    id: '1',
    name: "Medicines",
    description: "Add your reminders for medicines here"
  ),
  const Elements(
      id: '2',
      name: "Activities",
      description: "Add your reminders for activities here"
  ),
  const Elements(
      id: '3',
      name: "Nutrition",
      description: "Add your reminders for nutrition-intake here"
  ),
  const Elements(
      id: '4',
      name: "Vitals",
      description: "Add your reminders for vital and syptom checks here"
  ),
];

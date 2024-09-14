import 'package:flutter/material.dart';

enum ProgramType {
  cardio,
  lift,
}

class FitnessProgram {
  final AssetImage image;
  final String name;
  final String cals;
  final String time;
  final ProgramType type;

  FitnessProgram({
    required this.image,
    required this.name,
    required this.cals,
    required this.time,
    required this.type,
  });
}

final List<FitnessProgram> fitnessPrograms = [
  FitnessProgram(
    image: const AssetImage('assets/gym_01.webp'),
    name: 'Cardio',
    cals: '105kkal',
    time: '40min',
    type: ProgramType.cardio,
  ),
  FitnessProgram(
    image: const AssetImage('assets/gym_02.webp'),
    name: 'Back:Pullups',
    cals: '160kkal',
    time: '15min',
    type: ProgramType.lift,
  ),
  FitnessProgram(
    image: const AssetImage('assets/gym_03.webp'),
    name: 'Legs:Squat',
    cals: '140kkcal',
    time: '10min',
    type: ProgramType.lift,
  ),
  FitnessProgram(
    image: const AssetImage('assets/gym_04.webp'),
    name: 'Pushups',
    cals: '50cal',
    time: '5min',
    type: ProgramType.lift,
  )
];
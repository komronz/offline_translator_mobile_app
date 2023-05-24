import '../model/translation.dart';
import 'package:flutter/material.dart';

import './model/categories.dart';
///TEST DATA
Icon iconCAT(final icon) {
  return Icon(
    icon,
    color: Colors.black,
    size: 80, //test size
  );
}

final STORED_CATIGORIES = [
  Categories(
    id: 'c1',
    title: 'food',
    icon: iconCAT(Icons.food_bank_outlined),
  ),
  Categories(
    id: 'c2',
    title: 'Transport',
    icon: iconCAT(Icons.emoji_transportation_outlined),
  ),
  Categories(
    id: 'c3',
    title: 'Store',
    icon: iconCAT(Icons.store),
  ),
  Categories(
    id: 'c4',
    title: 'Transport',
    icon: iconCAT(Icons.emoji_transportation_outlined),
  ),
  Categories(
    id: 'c5',
    title: 'Transport',
    icon: iconCAT(Icons.emoji_transportation_outlined),
  ),
  Categories(
    id: 'c6',
    title: 'Transport',
    icon: iconCAT(Icons.emoji_transportation_outlined),
  ),
  Categories(
    id: 'c7',
    title: 'Transport',
    icon: iconCAT(Icons.emoji_transportation_outlined),
  ),
  Categories(
    id: 'c8',
    title: 'Transport',
    icon: iconCAT(Icons.emoji_transportation_outlined),
  ),
  Categories(
    id: 'c3',
    title: 'Store',
    icon: iconCAT(Icons.store),
  ),
];
const STORED_TRANSLATIONS = [
  Translation(
    id: 't1',
    categories: ['c1'],
    engTitle: 'test english word in Food CAT',
    uzbTitle: 'test uzbek word in Food CAT',
  ),
  Translation(
    id: 't2',
    categories: ['c1'],
    engTitle: 'test1 english word in Food CAT',
    uzbTitle: 'test1 uzbek word in Food CAT',
  ),
  Translation(
    id: 't3',
    categories: ['c1'],
    engTitle: 'test2 english word in Food CAT',
    uzbTitle: 'test2 uzbek word in Food CAT',
  ),
  Translation(
    id: 't5',
    categories: ['c2'],
    engTitle: 'test english word in Transport CAT',
    uzbTitle: 'test uzbek word in Transport CAT',
  ),
  Translation(
    id: 't6',
    categories: ['c1'],
    engTitle: 'test english word in Food CAT',
    uzbTitle: 'test uzbek word in Food CAT',
  ),
  Translation(
    id: 't7',
    categories: ['c1'],
    engTitle: 'test english word in Food CAT',
    uzbTitle: 'test uzbek word in Food CAT',
  ),
  Translation(
    id: 't8',
    categories: ['c1'],
    engTitle: 'test english word in Food CAT',
    uzbTitle: 'test uzbek word in Food CAT',
  ),
  Translation(
    id: 't10',
    categories: ['c1'],
    engTitle: 'test english word in Food CAT',
    uzbTitle: 'test uzbek word in Food CAT',
  ),
  Translation(
    id: 't11',
    categories: ['c1'],
    engTitle: 'test english word in Food CAT',
    uzbTitle: 'test uzbek word in Food CAT',
  ),
  Translation(
    id: 't12',
    categories: ['c1'],
    engTitle: 'test english word in Food CAT',
    uzbTitle: 'test uzbek word in Food CAT',
  ),
  Translation(
    id: 't13',
    categories: ['c1'],
    engTitle: 'test english word in Food CAT TEST...',
    uzbTitle: 'test uzbek word in Food CAT TEST....',
  ),
];

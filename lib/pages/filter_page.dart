import 'package:beauty_store/features/filters/widgets/filter_item.dart';
import 'package:beauty_store/shared/widgets/headers_button_back_title.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<StatefulWidget> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  String _selectedSort = 'По популярности';
  String _selectedSkinType = 'Жирная';
  String _selectedTypeProduct = 'Все';
  String _selectedSkinProblem = 'Не выбрано';
  String _selectedEffect = 'Увлажнение';
  String _selectedCosmeticLine = 'Все';

  final Map<String, List<String>> _filterOptions = {
    'Сортировка': ['По популярности'],
    'Тип кожи': [
      'Жирная',
      'Комбинированная',
      'Нормальная',
      'Сухая',
      'Любой вид',
    ],
    'Тип средства': ['Все', 'Сыворотка', 'Тоник', 'Крем', 'Осветляющая маска'],
    'Проблема кожи': ['Не выбрано'],
    'Эффект средства': ['Увлажнение'],
    'Линия косметики': ['Все'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 63.0, left: 16.0, right: 16.0),
            child: HeadersButtonBackTitle(title: 'Фильтры'),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  _buildMenuFilters(),
                  const SizedBox(height: 70.0),
                  _buildButtonFiltersApply(),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuFilters() {
    return Column(
      children: [
        const SizedBox(height: 24.0),
        FilterItem(
          title: 'Сортировка',
          value: _selectedSort,
          onTap: () =>
              _showFilterBottomSheet('Сортировка', _selectedSort, (value) {
                setState(() => _selectedSort = value);
              }),
        ),
        const SizedBox(height: 40.0),
        FilterItem(
          title: 'Тип кожи',
          value: _selectedSkinType,
          onTap: () =>
              _showFilterBottomSheet('Тип кожи', _selectedSkinType, (value) {
                setState(() => _selectedSkinType = value);
              }),
        ),
        const SizedBox(height: 34.0),
        FilterItem(
          title: 'Тип средства',
          value: _selectedTypeProduct,
          onTap: () => _showFilterBottomSheet(
            'Тип средства',
            _selectedTypeProduct,
            (value) {
              setState(() => _selectedTypeProduct = value);
            },
          ),
        ),
        const SizedBox(height: 34.0),
        FilterItem(
          title: 'Проблема кожи',
          value: _selectedSkinProblem,
          onTap: () => _showFilterBottomSheet(
            'Проблема кожи',
            _selectedSkinProblem,
            (value) {
              setState(() => _selectedSkinProblem = value);
            },
          ),
        ),
        const SizedBox(height: 34.0),
        FilterItem(
          title: 'Эффект средства',
          value: _selectedEffect,
          onTap: () => _showFilterBottomSheet(
            'Эффект средства',
            _selectedEffect,
            (value) {
              setState(() => _selectedEffect = value);
            },
          ),
        ),
        const SizedBox(height: 34.0),
        FilterItem(
          title: 'Линия косметики',
          value: _selectedCosmeticLine,
          onTap: () => _showFilterBottomSheet(
            'Линия косметики',
            _selectedCosmeticLine,
            (value) {
              setState(() => _selectedCosmeticLine = value);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildButtonFiltersApply() {
    return Padding(
      padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 20.0),
      child: Container(
        width: double.infinity,
        height: 56.0,
        decoration: BoxDecoration(
          color: Color(0xff171717),
          borderRadius: BorderRadius.circular(9.0),
        ),
        child: Center(
          child: Text(
            'Применить фильтры',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Raleway',
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  void _showFilterBottomSheet(
    String filterTitle,
    String currentValue,
    ValueChanged<String> onValueSelected,
  ) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(5.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  filterTitle,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                  ),
                ),

                ..._filterOptions[filterTitle]!.map((option) {
                  return ListTile(
                    title: Text(
                      option,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: option == currentValue
                        ? Icon(Icons.check, color: Colors.black, weight: 5)
                        : null,
                    onTap: () {
                      onValueSelected(option);
                      Navigator.pop(context);
                    },
                  );
                }),
              ],
            ),
          ),
        );
      },
    );
  }
}

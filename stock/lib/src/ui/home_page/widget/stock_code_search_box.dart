import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

final stockCodeProvider = StateProvider<String>((ref) {
  return '2330';
});

class StockSearchBox extends ConsumerStatefulWidget {
  const StockSearchBox({Key? key}) : super(key: key);

  @override
  ConsumerState<StockSearchBox> createState() => _StockSearchRow();
}

class _StockSearchRow extends ConsumerState<StockSearchBox> {
  static const _radius = 30.0;

  late final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.text = ref.read(stockCodeProvider);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // circular radius
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            width: 200,
            child: TextField(
                controller: _searchController,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(_radius),
                      bottomLeft: Radius.circular(_radius),
                    ),
                  ),
                ),
                onSubmitted: (value) {
                  ref.read(stockCodeProvider.state).state = value;
                  _searchController.text = "";
                }),
          ),
          InkWell(
            child: Container(
              height: 48,
              width: 50,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(_radius),
                  bottomRight: Radius.circular(_radius),
                ),
              ),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            onTap: () {
              FocusScope.of(context).unfocus();
              ref.read(stockCodeProvider.state).state = _searchController.text;
              _searchController.text = "";
            },
          )
        ],
      ),
    );
  }
}

import 'package:poke_dart/poke_dart.dart';
import 'package:poke_dart/src/base_endpoint.dart';
import 'package:test/test.dart';

void main() {
  late Pokedex dex;

  setUp(() {
    dex = Pokedex();
  });

  group('Item', () {
    final List<Item> items = [];
    late BaseNamedEndpoint<Item> endpoint;

    setUp(() {
      items.clear();
      endpoint = dex.item;
    });

    test(
      'getAll',
      () async {
        final resources = await endpoint.getAll();
        for (final resource in resources.results) {
          final item = await endpoint.getByUrl(resource.url);
          items.add(item);
        }

        expect(items.length, 1607);
      },
      timeout: const Timeout(Duration(seconds: 900)),
    );

    test('getPage', () async {
      final resources = await endpoint.getPage();
      for (final resource in resources.results) {
        final item = await endpoint.getByUrl(resource.url);
        items.add(item);
      }

      expect(items.length, 20);
    });
  });

  group('ItemAttribute', () {
    final List<ItemAttribute> attribs = [];
    late BaseNamedEndpoint<ItemAttribute> endpoint;

    setUp(() {
      attribs.clear();
      endpoint = dex.itemAttributes;
    });

    test('getAll', () async {
      final resources = await endpoint.getAll();
      for (final resource in resources.results) {
        final item = await endpoint.getByUrl(resource.url);
        attribs.add(item);
      }

      expect(attribs.length, 8);
    });

    test('getPage', () async {
      final resources = await endpoint.getPage();
      for (final resource in resources.results) {
        final item = await endpoint.getByUrl(resource.url);
        attribs.add(item);
      }

      expect(attribs.length, 8);
    });
  });

  group('ItemCategory', () {
    final List<ItemCategory> categories = [];
    late BaseNamedEndpoint<ItemCategory> endpoint;

    setUp(() {
      categories.clear();
      endpoint = dex.itemCategories;
    });

    test('getAll', () async {
      final resources = await endpoint.getAll();
      for (final resource in resources.results) {
        final item = await endpoint.getByUrl(resource.url);
        categories.add(item);
      }

      expect(categories.length, 50);
    });

    test('getPage', () async {
      final resources = await endpoint.getPage();
      for (final resource in resources.results) {
        final item = await endpoint.getByUrl(resource.url);
        categories.add(item);
      }

      expect(categories.length, 20);
    });
  });

  group('ItemFlingEffect', () {
    final List<ItemFlingEffect> flingEffs = [];
    late BaseNamedEndpoint<ItemFlingEffect> endpoint;

    setUp(() {
      flingEffs.clear();
      endpoint = dex.itemFlingEffects;
    });

    test('getAll', () async {
      final resources = await endpoint.getAll();
      for (final resource in resources.results) {
        final item = await endpoint.getByUrl(resource.url);
        flingEffs.add(item);
      }

      expect(flingEffs.length, 7);
    });

    test('getPage', () async {
      final resources = await endpoint.getPage();
      for (final resource in resources.results) {
        final item = await endpoint.getByUrl(resource.url);
        flingEffs.add(item);
      }

      expect(flingEffs.length, 7);
    });
  });

  group('ItemPocket', () {
    final List<ItemPocket> itemPockets = [];
    late BaseNamedEndpoint<ItemPocket> endpoint;

    setUp(() {
      itemPockets.clear();
      endpoint = dex.itemPockets;
    });

    test('getAll', () async {
      final resources = await endpoint.getAll();
      for (final resource in resources.results) {
        final item = await endpoint.getByUrl(resource.url);
        itemPockets.add(item);
      }

      expect(itemPockets.length, 8);
    });

    test('getPage', () async {
      final resources = await endpoint.getPage();
      for (final resource in resources.results) {
        final item = await endpoint.getByUrl(resource.url);
        itemPockets.add(item);
      }

      expect(itemPockets.length, 8);
    });
  });
}
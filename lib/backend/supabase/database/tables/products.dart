import '../database.dart';

class ProductsTable extends SupabaseTable<ProductsRow> {
  @override
  String get tableName => 'products';

  @override
  ProductsRow createRow(Map<String, dynamic> data) => ProductsRow(data);
}

class ProductsRow extends SupabaseDataRow {
  ProductsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get model => getField<String>('model');
  set model(String? value) => setField<String>('model', value);

  String? get ram => getField<String>('ram');
  set ram(String? value) => setField<String>('ram', value);

  String? get condition => getField<String>('condition');
  set condition(String? value) => setField<String>('condition', value);

  String? get dealOption => getField<String>('deal_option');
  set dealOption(String? value) => setField<String>('deal_option', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get township => getField<String>('township');
  set township(String? value) => setField<String>('township', value);

  String? get fullAddress => getField<String>('full_address');
  set fullAddress(String? value) => setField<String>('full_address', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  List<String> get imageUrls => getListField<String>('image_urls');
  set imageUrls(List<String>? value) =>
      setListField<String>('image_urls', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}

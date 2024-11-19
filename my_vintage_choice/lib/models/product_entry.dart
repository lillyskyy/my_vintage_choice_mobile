// To parse this JSON data, do
//
//     final additionalEntry = additionalEntryFromJson(jsonString);

import 'dart:convert';

List<AdditionalEntry> additionalEntryFromJson(String str) => List<AdditionalEntry>.from(json.decode(str).map((x) => AdditionalEntry.fromJson(x)));

String additionalEntryToJson(List<AdditionalEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AdditionalEntry {
    String model;
    String pk;
    Fields fields;

    AdditionalEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory AdditionalEntry.fromJson(Map<String, dynamic> json) => AdditionalEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String product;
    DateTime time;
    String description;
    int stock;
    int price;

    Fields({
        required this.user,
        required this.product,
        required this.time,
        required this.description,
        required this.stock,
        required this.price,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        product: json["product"],
        time: DateTime.parse(json["time"]),
        description: json["description"],
        stock: json["stock"],
        price: json["price"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "product": product,
        "time": "${time.year.toString().padLeft(4, '0')}-${time.month.toString().padLeft(2, '0')}-${time.day.toString().padLeft(2, '0')}",
        "description": description,
        "stock": stock,
        "price": price,
    };
}

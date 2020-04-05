// Todo: Funding Instruments, Payer, basically all objects...
/// Contains code to process payments via PayPal.
library paypal_rest_api.apis.payments;

import "dart:async";
import "dart:convert";

import 'package:http/http.dart';
import "package:http/src/base_client.dart" as http;
import 'package:json_annotation/json_annotation.dart';

part 'payments.g.dart';

/// Includes an intent, payer, and transactions.
@JsonSerializable(fieldRename: FieldRename.snake)
class Payment {
  String intent, experienceProfileId, noteToPayer;
  List<Transaction> transactions = [];
  Payer payer;
  ApplicationContext applicationContext;
  RedirectUrls redirectUrls;

  Payment({
    this.intent,
    this.experienceProfileId,
    this.noteToPayer,
    this.redirectUrls,
    this.transactions,
    payer,
  }) {
    this.transactions = transactions ?? [];
    this.redirectUrls = redirectUrls ?? {};
    this.payer = payer ?? {};
  }

  factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class RedirectUrls {
  String returnUrl;
  String cancelUrl;

  RedirectUrls();

  factory RedirectUrls.fromJson(Map<String, dynamic> json) => _$RedirectUrlsFromJson(json);

  Map<String, dynamic> toJson() => _$RedirectUrlsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Payer {
  String paymentMethod;
  String status;
  List<FundingInstrument> fundingInstruments = [];
  PayerInfo payerInfo;

  Payer({this.paymentMethod, List fundingInstruments}) {
    this.fundingInstruments = fundingInstruments ?? [];
  }

  factory Payer.fromJson(Map<String, dynamic> json) => _$PayerFromJson(json);

  Map<String, dynamic> toJson() => _$PayerToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FundingInstrument {
  CreditCardToken creditCardToken;

  FundingInstrument();

  factory FundingInstrument.fromJson(Map<String, dynamic> json) => _$FundingInstrumentFromJson(json);

  Map<String, dynamic> toJson() => _$FundingInstrumentToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CreditCardToken {
  String creditCardId;
  String payerId;
  String last4;
  String type;
  String expireMonth;
  String expireYear;

  CreditCardToken();

  factory CreditCardToken.fromJson(Map<String, dynamic> json) => _$CreditCardTokenFromJson(json);

  Map<String, dynamic> toJson() => _$CreditCardTokenToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PayerInfo {
  String email;
  String salutation;
  String firstName;
  String middleName;
  String lastName;
  String suffix;
  String payerId;
  DateTime birthDate;
  String taxId;
  String taxIdType;
  BillingAddress billingAddress;
  ShippingAddress shippingAddress;

  PayerInfo();

  factory PayerInfo.fromJson(Map<String, dynamic> json) => _$PayerInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PayerInfoToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BillingAddress {
  String line1;
  String line2;
  String city;
  String countryCode;
  String postalCode;
  String state;
  String phone;
  String normalizationStatus;
  String type;

  BillingAddress();

  factory BillingAddress.fromJson(Map<String, dynamic> json) => _$BillingAddressFromJson(json);

  Map<String, dynamic> toJson() => _$BillingAddressToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ShippingAddress extends BillingAddress {
  String recipientName;

  ShippingAddress();

  factory ShippingAddress.fromJson(Map<String, dynamic> json) => _$ShippingAddressFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingAddressToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ApplicationContext {
  String brandName;
  String locale;
  String landingPage;
  String shippingPreference;
  String userAction;
  PaymentSource preferredPaymentSource;

  ApplicationContext();

  factory ApplicationContext.fromJson(Map<String, dynamic> json) => _$ApplicationContextFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicationContextToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PaymentSource {
  Token token;

  PaymentSource();

  factory PaymentSource.fromJson(Map<String, dynamic> json) => _$PaymentSourceFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentSourceToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Token {
  String id;
  String type;

  Token();

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  Map<String, dynamic> toJson() => _$TokenToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Transaction {
  Amount amount;
  Payee payee;
  String description;
  String noteToPayee;
  String custom;
  String invoiceNumber;
  String softDescriptor;
  PaymentOptions paymentOptions;
  ItemList itemList;
  String notifyUrl;
  List<RelatedSource> relatedResources;

  Transaction();

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Amount {
  String currency;
  String total;
  String details;

  Amount();

  factory Amount.fromJson(Map<String, dynamic> json) => _$AmountFromJson(json);

  Map<String, dynamic> toJson() => _$AmountToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Payee {
  String email;
  String merchantId;

  Payee();

  factory Payee.fromJson(Map<String, dynamic> json) => _$PayeeFromJson(json);

  Map<String, dynamic> toJson() => _$PayeeToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PaymentOptions {
  String allowedPaymentMethod;

  PaymentOptions();

  factory PaymentOptions.fromJson(Map<String, dynamic> json) => _$PaymentOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentOptionsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ItemList {
  List<Item> items;
  ShippingAddress shippingAddress;
  String shippingPhoneNumber;

  ItemList();

  factory ItemList.fromJson(Map<String, dynamic> json) => _$ItemListFromJson(json);

  Map<String, dynamic> toJson() => _$ItemListToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Item {
  String sku;
  String name;
  String description;
  String quantity;
  String price;
  String currency;
  String tax;

  Item();

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class RelatedSource {
  Sale sale;
  Authorization authorization;
  Order order;
  Capture capture;
  Refund refund;

  RelatedSource();

  factory RelatedSource.fromJson(Map<String, dynamic> json) => _$RelatedSourceFromJson(json);

  Map<String, dynamic> toJson() => _$RelatedSourceToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Sale {
  String id;
  Amount amount;
  String paymentMethod;
  String state;
  String reasonCode;
  String protectionEligibility;
  String protectionEligibilityType;
  DateTime clearingTime;
  String paymentHoldStatus;
  List<PaymentHoldReason> paymentHoldReasons;
  Currency transactionFee;
  Currency receivableAmount;
  String exchangeRate;
  FmfDetails fmfDetails;
  String receiptId;
  String parentPayment;
  ProcessorResponse processorResponse;
  String billingAgreementId;
  DateTime createTime;
  DateTime updateTime;
  List<LinkDescription> links;

  Sale();

  factory Sale.fromJson(Map<String, dynamic> json) => _$SaleFromJson(json);

  Map<String, dynamic> toJson() => _$SaleToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PaymentHoldReason {
  String paymentHoldReason;

  PaymentHoldReason();

  factory PaymentHoldReason.fromJson(Map<String, dynamic> json) => _$PaymentHoldReasonFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentHoldReasonToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Currency {
  String currency;
  String value;

  Currency();

  factory Currency.fromJson(Map<String, dynamic> json) => _$CurrencyFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FmfDetails {
  String filterType;
  String filterId;
  String name;
  String description;

  FmfDetails();

  factory FmfDetails.fromJson(Map<String, dynamic> json) => _$FmfDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$FmfDetailsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProcessorResponse {
  String responseCode;
  String avsCode;
  String cvvCode;
  String adviceCode;
  String sciSubmitted;
  String vpas;

  ProcessorResponse();

  factory ProcessorResponse.fromJson(Map<String, dynamic> json) => _$ProcessorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProcessorResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class LinkDescription {
  String href;
  String rel;
  String method;

  LinkDescription();

  factory LinkDescription.fromJson(Map<String, dynamic> json) => _$LinkDescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$LinkDescriptionToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Authorization {
  String id;
  Amount amount;
  String paymentMode;
  String state;
  String reasonCode;
  String pendingReason;
  String protectionEligibility;
  String protectionEligibilityType;
  FmfDetails fmfDetails;
  String parentPayment;
  ProcessorResponse processorResponse;
  DateTime validUntil;
  DateTime createTime;
  DateTime updateTime;
  String receiptId;
  List<LinkDescription> links;

  Authorization();

  factory Authorization.fromJson(Map<String, dynamic> json) => _$AuthorizationFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorizationToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Order {
  String id;
  Amount amount;
  String paymentMode;
  String state;
  String reasonCode;
  String pendingReason;
  String protectionEligibility;
  String protectionEligibilityType;
  String parentPayment;
  FmfDetails fmfDetails;
  DateTime createTime;
  DateTime updateTime;
  List<LinkDescription> links;

  Order();

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Capture {
  String id;
  Amount amount;
  bool isFinalCapture;
  String state;
  String reasonCode;
  String parentPayment;
  String invoiceNumber;
  Currency transactionFee;
  Currency receivableAmount;
  String exchangeRate;
  String noteToPlayer;
  DateTime createTime;
  DateTime updateTime;
  List<LinkDescription> links;

  Capture();

  factory Capture.fromJson(Map<String, dynamic> json) => _$CaptureFromJson(json);

  Map<String, dynamic> toJson() => _$CaptureToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Refund {
  String id;
  Amount amount;
  String state;
  String reason;
  String invoiceNumber;
  String saleId;
  String captureId;
  String parentPayment;
  String description;
  DateTime createTime;
  DateTime updateTime;
  List<LinkDescription> links;

  Refund();

  factory Refund.fromJson(Map<String, dynamic> json) => _$RefundFromJson(json);

  Map<String, dynamic> toJson() => _$RefundToJson(this);
}

/// Wraps the PayPal Payments API.
class PaymentsApi {
  final String _endPoint = "/payments";
  http.BaseClient _client;

  PaymentsApi(this._client);

  /// Creates a [Payment].
  Future<Payment> createPayment(payment) async {
    Response response = await _client.post(
      "$_endPoint/payment",
      body: jsonEncode(payment is Payment ? payment.toJson() : payment),
      headers: <String, String>{
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
    );
    return Payment.fromJson(jsonDecode(response.body));
  }
}

/* {
  "id": "PAY-5YK922393D847794YKER7MUI",
  "create_time": "2013-02-19T22:01:53Z",
  "update_time": "2013-02-19T22:01:55Z",
  "state": "approved",
  "intent": "sale",
  "payer": {
    "payment_method": "credit_card",
    "funding_instruments": [
      {
        "credit_card": {
          "type": "mastercard",
          "number": "xxxxxxxxxxxx5559",
          "expire_month": 2,
          "expire_year": 2018,
          "first_name": "Betsy",
          "last_name": "Buyer"
        }
      }
    ]
  },
  "transactions": [
    {
      "amount": {
        "total": "7.47",
        "currency": "USD",
        "details": {
          "subtotal": "7.47"
        }
      },
      "description": "This is the payment transaction description.",
      "note_to_payer": "Contact us for any questions on your order.",
      "related_resources": [
        {
          "sale": {
            "id": "36C38912MN9658832",
            "create_time": "2013-02-19T22:01:53Z",
            "update_time": "2013-02-19T22:01:55Z",
            "state": "completed",
            "amount": {
              "total": "7.47",
              "currency": "USD"
            },
            "protection_eligibility": "ELIGIBLE",
            "protection_eligibility_type": "ITEM_NOT_RECEIVED_ELIGIBLE",
            "transaction_fee": {
              "value": "1.75",
              "currency": "USD"
            },
            "parent_payment": "PAY-5YK922393D847794YKER7MUI",
            "links": [
              {
                "href": "https://api.paypal.com/v1/payments/sale/36C38912MN9658832",
                "rel": "self",
                "method": "GET"
              },
              {
                "href": "https://api.paypal.com/v1/payments/sale/36C38912MN9658832/refund",
                "rel": "refund",
                "method": "POST"
              },
              {
                "href": "https://api.paypal.com/v1/payments/payment/PAY-5YK922393D847794YKER7MUI",
                "rel": "parent_payment",
                "method": "GET"
              }
            ]
          }
        }
      ]
    }
  ],
  "links": [
    {
      "href": "https://api.paypal.com/v1/payments/payment/PAY-5YK922393D847794YKER7MUI",
      "rel": "self",
      "method": "GET"
    }
  ]
}
*/

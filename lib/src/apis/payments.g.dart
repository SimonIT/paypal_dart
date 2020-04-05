// GENERATED CODE - DO NOT MODIFY BY HAND

part of paypal_rest_api.apis.payments;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return Payment(
    intent: json['intent'] as String,
    experienceProfileId: json['experience_profile_id'] as String,
    noteToPayer: json['note_to_payer'] as String,
    redirectUrls: json['redirect_urls'] == null
        ? null
        : RedirectUrls.fromJson(json['redirect_urls'] as Map<String, dynamic>),
    transactions: (json['transactions'] as List)
        ?.map((e) =>
            e == null ? null : Transaction.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    payer: json['payer'],
  )..applicationContext = json['application_context'] == null
      ? null
      : ApplicationContext.fromJson(
          json['application_context'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
      'intent': instance.intent,
      'experience_profile_id': instance.experienceProfileId,
      'note_to_payer': instance.noteToPayer,
      'transactions': instance.transactions,
      'payer': instance.payer,
      'application_context': instance.applicationContext,
      'redirect_urls': instance.redirectUrls,
    };

RedirectUrls _$RedirectUrlsFromJson(Map<String, dynamic> json) {
  return RedirectUrls()
    ..returnUrl = json['return_url'] as String
    ..cancelUrl = json['cancel_url'] as String;
}

Map<String, dynamic> _$RedirectUrlsToJson(RedirectUrls instance) =>
    <String, dynamic>{
      'return_url': instance.returnUrl,
      'cancel_url': instance.cancelUrl,
    };

Payer _$PayerFromJson(Map<String, dynamic> json) {
  return Payer(
    paymentMethod: json['payment_method'] as String,
    fundingInstruments: json['funding_instruments'] as List,
  )
    ..status = json['status'] as String
    ..payerInfo = json['payer_info'] == null
        ? null
        : PayerInfo.fromJson(json['payer_info'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PayerToJson(Payer instance) => <String, dynamic>{
      'payment_method': instance.paymentMethod,
      'status': instance.status,
      'funding_instruments': instance.fundingInstruments,
      'payer_info': instance.payerInfo,
    };

FundingInstrument _$FundingInstrumentFromJson(Map<String, dynamic> json) {
  return FundingInstrument()
    ..creditCardToken = json['credit_card_token'] == null
        ? null
        : CreditCardToken.fromJson(
            json['credit_card_token'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FundingInstrumentToJson(FundingInstrument instance) =>
    <String, dynamic>{
      'credit_card_token': instance.creditCardToken,
    };

CreditCardToken _$CreditCardTokenFromJson(Map<String, dynamic> json) {
  return CreditCardToken()
    ..creditCardId = json['credit_card_id'] as String
    ..payerId = json['payer_id'] as String
    ..last4 = json['last4'] as String
    ..type = json['type'] as String
    ..expireMonth = json['expire_month'] as String
    ..expireYear = json['expire_year'] as String;
}

Map<String, dynamic> _$CreditCardTokenToJson(CreditCardToken instance) =>
    <String, dynamic>{
      'credit_card_id': instance.creditCardId,
      'payer_id': instance.payerId,
      'last4': instance.last4,
      'type': instance.type,
      'expire_month': instance.expireMonth,
      'expire_year': instance.expireYear,
    };

PayerInfo _$PayerInfoFromJson(Map<String, dynamic> json) {
  return PayerInfo()
    ..email = json['email'] as String
    ..salutation = json['salutation'] as String
    ..firstName = json['first_name'] as String
    ..middleName = json['middle_name'] as String
    ..lastName = json['last_name'] as String
    ..suffix = json['suffix'] as String
    ..payerId = json['payer_id'] as String
    ..birthDate = json['birth_date'] == null
        ? null
        : DateTime.parse(json['birth_date'] as String)
    ..taxId = json['tax_id'] as String
    ..taxIdType = json['tax_id_type'] as String
    ..billingAddress = json['billing_address'] == null
        ? null
        : BillingAddress.fromJson(
            json['billing_address'] as Map<String, dynamic>)
    ..shippingAddress = json['shipping_address'] == null
        ? null
        : ShippingAddress.fromJson(
            json['shipping_address'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PayerInfoToJson(PayerInfo instance) => <String, dynamic>{
      'email': instance.email,
      'salutation': instance.salutation,
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'suffix': instance.suffix,
      'payer_id': instance.payerId,
      'birth_date': instance.birthDate?.toIso8601String(),
      'tax_id': instance.taxId,
      'tax_id_type': instance.taxIdType,
      'billing_address': instance.billingAddress,
      'shipping_address': instance.shippingAddress,
    };

BillingAddress _$BillingAddressFromJson(Map<String, dynamic> json) {
  return BillingAddress()
    ..line1 = json['line1'] as String
    ..line2 = json['line2'] as String
    ..city = json['city'] as String
    ..countryCode = json['country_code'] as String
    ..postalCode = json['postal_code'] as String
    ..state = json['state'] as String
    ..phone = json['phone'] as String
    ..normalizationStatus = json['normalization_status'] as String
    ..type = json['type'] as String;
}

Map<String, dynamic> _$BillingAddressToJson(BillingAddress instance) =>
    <String, dynamic>{
      'line1': instance.line1,
      'line2': instance.line2,
      'city': instance.city,
      'country_code': instance.countryCode,
      'postal_code': instance.postalCode,
      'state': instance.state,
      'phone': instance.phone,
      'normalization_status': instance.normalizationStatus,
      'type': instance.type,
    };

ShippingAddress _$ShippingAddressFromJson(Map<String, dynamic> json) {
  return ShippingAddress()
    ..line1 = json['line1'] as String
    ..line2 = json['line2'] as String
    ..city = json['city'] as String
    ..countryCode = json['country_code'] as String
    ..postalCode = json['postal_code'] as String
    ..state = json['state'] as String
    ..phone = json['phone'] as String
    ..normalizationStatus = json['normalization_status'] as String
    ..type = json['type'] as String
    ..recipientName = json['recipient_name'] as String;
}

Map<String, dynamic> _$ShippingAddressToJson(ShippingAddress instance) =>
    <String, dynamic>{
      'line1': instance.line1,
      'line2': instance.line2,
      'city': instance.city,
      'country_code': instance.countryCode,
      'postal_code': instance.postalCode,
      'state': instance.state,
      'phone': instance.phone,
      'normalization_status': instance.normalizationStatus,
      'type': instance.type,
      'recipient_name': instance.recipientName,
    };

ApplicationContext _$ApplicationContextFromJson(Map<String, dynamic> json) {
  return ApplicationContext()
    ..brandName = json['brand_name'] as String
    ..locale = json['locale'] as String
    ..landingPage = json['landing_page'] as String
    ..shippingPreference = json['shipping_preference'] as String
    ..userAction = json['user_action'] as String
    ..preferredPaymentSource = json['preferred_payment_source'] == null
        ? null
        : PaymentSource.fromJson(
            json['preferred_payment_source'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ApplicationContextToJson(ApplicationContext instance) =>
    <String, dynamic>{
      'brand_name': instance.brandName,
      'locale': instance.locale,
      'landing_page': instance.landingPage,
      'shipping_preference': instance.shippingPreference,
      'user_action': instance.userAction,
      'preferred_payment_source': instance.preferredPaymentSource,
    };

PaymentSource _$PaymentSourceFromJson(Map<String, dynamic> json) {
  return PaymentSource()
    ..token = json['token'] == null
        ? null
        : Token.fromJson(json['token'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaymentSourceToJson(PaymentSource instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

Token _$TokenFromJson(Map<String, dynamic> json) {
  return Token()
    ..id = json['id'] as String
    ..type = json['type'] as String;
}

Map<String, dynamic> _$TokenToJson(Token instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return Transaction()
    ..amount = json['amount'] == null
        ? null
        : Amount.fromJson(json['amount'] as Map<String, dynamic>)
    ..payee = json['payee'] == null
        ? null
        : Payee.fromJson(json['payee'] as Map<String, dynamic>)
    ..description = json['description'] as String
    ..noteToPayee = json['note_to_payee'] as String
    ..custom = json['custom'] as String
    ..invoiceNumber = json['invoice_number'] as String
    ..softDescriptor = json['soft_descriptor'] as String
    ..paymentOptions = json['payment_options'] == null
        ? null
        : PaymentOptions.fromJson(
            json['payment_options'] as Map<String, dynamic>)
    ..itemList = json['item_list'] == null
        ? null
        : ItemList.fromJson(json['item_list'] as Map<String, dynamic>)
    ..notifyUrl = json['notify_url'] as String
    ..relatedResources = (json['related_resources'] as List)
        ?.map((e) => e == null
            ? null
            : RelatedSource.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'payee': instance.payee,
      'description': instance.description,
      'note_to_payee': instance.noteToPayee,
      'custom': instance.custom,
      'invoice_number': instance.invoiceNumber,
      'soft_descriptor': instance.softDescriptor,
      'payment_options': instance.paymentOptions,
      'item_list': instance.itemList,
      'notify_url': instance.notifyUrl,
      'related_resources': instance.relatedResources,
    };

Amount _$AmountFromJson(Map<String, dynamic> json) {
  return Amount()
    ..currency = json['currency'] as String
    ..total = json['total'] as String
    ..details = json['details'] as String;
}

Map<String, dynamic> _$AmountToJson(Amount instance) => <String, dynamic>{
      'currency': instance.currency,
      'total': instance.total,
      'details': instance.details,
    };

Payee _$PayeeFromJson(Map<String, dynamic> json) {
  return Payee()
    ..email = json['email'] as String
    ..merchantId = json['merchant_id'] as String;
}

Map<String, dynamic> _$PayeeToJson(Payee instance) => <String, dynamic>{
      'email': instance.email,
      'merchant_id': instance.merchantId,
    };

PaymentOptions _$PaymentOptionsFromJson(Map<String, dynamic> json) {
  return PaymentOptions()
    ..allowedPaymentMethod = json['allowed_payment_method'] as String;
}

Map<String, dynamic> _$PaymentOptionsToJson(PaymentOptions instance) =>
    <String, dynamic>{
      'allowed_payment_method': instance.allowedPaymentMethod,
    };

ItemList _$ItemListFromJson(Map<String, dynamic> json) {
  return ItemList()
    ..items = (json['items'] as List)
        ?.map(
            (e) => e == null ? null : Item.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..shippingAddress = json['shipping_address'] == null
        ? null
        : ShippingAddress.fromJson(
            json['shipping_address'] as Map<String, dynamic>)
    ..shippingPhoneNumber = json['shipping_phone_number'] as String;
}

Map<String, dynamic> _$ItemListToJson(ItemList instance) => <String, dynamic>{
      'items': instance.items,
      'shipping_address': instance.shippingAddress,
      'shipping_phone_number': instance.shippingPhoneNumber,
    };

Item _$ItemFromJson(Map<String, dynamic> json) {
  return Item()
    ..sku = json['sku'] as String
    ..name = json['name'] as String
    ..description = json['description'] as String
    ..quantity = json['quantity'] as String
    ..price = json['price'] as String
    ..currency = json['currency'] as String
    ..tax = json['tax'] as String;
}

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'sku': instance.sku,
      'name': instance.name,
      'description': instance.description,
      'quantity': instance.quantity,
      'price': instance.price,
      'currency': instance.currency,
      'tax': instance.tax,
    };

RelatedSource _$RelatedSourceFromJson(Map<String, dynamic> json) {
  return RelatedSource()
    ..sale = json['sale'] == null
        ? null
        : Sale.fromJson(json['sale'] as Map<String, dynamic>)
    ..authorization = json['authorization'] == null
        ? null
        : Authorization.fromJson(json['authorization'] as Map<String, dynamic>)
    ..order = json['order'] == null
        ? null
        : Order.fromJson(json['order'] as Map<String, dynamic>)
    ..capture = json['capture'] == null
        ? null
        : Capture.fromJson(json['capture'] as Map<String, dynamic>)
    ..refund = json['refund'] == null
        ? null
        : Refund.fromJson(json['refund'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RelatedSourceToJson(RelatedSource instance) =>
    <String, dynamic>{
      'sale': instance.sale,
      'authorization': instance.authorization,
      'order': instance.order,
      'capture': instance.capture,
      'refund': instance.refund,
    };

Sale _$SaleFromJson(Map<String, dynamic> json) {
  return Sale()
    ..id = json['id'] as String
    ..amount = json['amount'] == null
        ? null
        : Amount.fromJson(json['amount'] as Map<String, dynamic>)
    ..paymentMethod = json['payment_method'] as String
    ..state = json['state'] as String
    ..reasonCode = json['reason_code'] as String
    ..protectionEligibility = json['protection_eligibility'] as String
    ..protectionEligibilityType = json['protection_eligibility_type'] as String
    ..clearingTime = json['clearing_time'] == null
        ? null
        : DateTime.parse(json['clearing_time'] as String)
    ..paymentHoldStatus = json['payment_hold_status'] as String
    ..paymentHoldReasons = (json['payment_hold_reasons'] as List)
        ?.map((e) => e == null
            ? null
            : PaymentHoldReason.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..transactionFee = json['transaction_fee'] == null
        ? null
        : Currency.fromJson(json['transaction_fee'] as Map<String, dynamic>)
    ..receivableAmount = json['receivable_amount'] == null
        ? null
        : Currency.fromJson(json['receivable_amount'] as Map<String, dynamic>)
    ..exchangeRate = json['exchange_rate'] as String
    ..fmfDetails = json['fmf_details'] == null
        ? null
        : FmfDetails.fromJson(json['fmf_details'] as Map<String, dynamic>)
    ..receiptId = json['receipt_id'] as String
    ..parentPayment = json['parent_payment'] as String
    ..processorResponse = json['processor_response'] == null
        ? null
        : ProcessorResponse.fromJson(
            json['processor_response'] as Map<String, dynamic>)
    ..billingAgreementId = json['billing_agreement_id'] as String
    ..createTime = json['create_time'] == null
        ? null
        : DateTime.parse(json['create_time'] as String)
    ..updateTime = json['update_time'] == null
        ? null
        : DateTime.parse(json['update_time'] as String)
    ..links = (json['links'] as List)
        ?.map((e) => e == null
            ? null
            : LinkDescription.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$SaleToJson(Sale instance) => <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'payment_method': instance.paymentMethod,
      'state': instance.state,
      'reason_code': instance.reasonCode,
      'protection_eligibility': instance.protectionEligibility,
      'protection_eligibility_type': instance.protectionEligibilityType,
      'clearing_time': instance.clearingTime?.toIso8601String(),
      'payment_hold_status': instance.paymentHoldStatus,
      'payment_hold_reasons': instance.paymentHoldReasons,
      'transaction_fee': instance.transactionFee,
      'receivable_amount': instance.receivableAmount,
      'exchange_rate': instance.exchangeRate,
      'fmf_details': instance.fmfDetails,
      'receipt_id': instance.receiptId,
      'parent_payment': instance.parentPayment,
      'processor_response': instance.processorResponse,
      'billing_agreement_id': instance.billingAgreementId,
      'create_time': instance.createTime?.toIso8601String(),
      'update_time': instance.updateTime?.toIso8601String(),
      'links': instance.links,
    };

PaymentHoldReason _$PaymentHoldReasonFromJson(Map<String, dynamic> json) {
  return PaymentHoldReason()
    ..paymentHoldReason = json['payment_hold_reason'] as String;
}

Map<String, dynamic> _$PaymentHoldReasonToJson(PaymentHoldReason instance) =>
    <String, dynamic>{
      'payment_hold_reason': instance.paymentHoldReason,
    };

Currency _$CurrencyFromJson(Map<String, dynamic> json) {
  return Currency()
    ..currency = json['currency'] as String
    ..value = json['value'] as String;
}

Map<String, dynamic> _$CurrencyToJson(Currency instance) => <String, dynamic>{
      'currency': instance.currency,
      'value': instance.value,
    };

FmfDetails _$FmfDetailsFromJson(Map<String, dynamic> json) {
  return FmfDetails()
    ..filterType = json['filter_type'] as String
    ..filterId = json['filter_id'] as String
    ..name = json['name'] as String
    ..description = json['description'] as String;
}

Map<String, dynamic> _$FmfDetailsToJson(FmfDetails instance) =>
    <String, dynamic>{
      'filter_type': instance.filterType,
      'filter_id': instance.filterId,
      'name': instance.name,
      'description': instance.description,
    };

ProcessorResponse _$ProcessorResponseFromJson(Map<String, dynamic> json) {
  return ProcessorResponse()
    ..responseCode = json['response_code'] as String
    ..avsCode = json['avs_code'] as String
    ..cvvCode = json['cvv_code'] as String
    ..adviceCode = json['advice_code'] as String
    ..sciSubmitted = json['sci_submitted'] as String
    ..vpas = json['vpas'] as String;
}

Map<String, dynamic> _$ProcessorResponseToJson(ProcessorResponse instance) =>
    <String, dynamic>{
      'response_code': instance.responseCode,
      'avs_code': instance.avsCode,
      'cvv_code': instance.cvvCode,
      'advice_code': instance.adviceCode,
      'sci_submitted': instance.sciSubmitted,
      'vpas': instance.vpas,
    };

LinkDescription _$LinkDescriptionFromJson(Map<String, dynamic> json) {
  return LinkDescription()
    ..href = json['href'] as String
    ..rel = json['rel'] as String
    ..method = json['method'] as String;
}

Map<String, dynamic> _$LinkDescriptionToJson(LinkDescription instance) =>
    <String, dynamic>{
      'href': instance.href,
      'rel': instance.rel,
      'method': instance.method,
    };

Authorization _$AuthorizationFromJson(Map<String, dynamic> json) {
  return Authorization()
    ..id = json['id'] as String
    ..amount = json['amount'] == null
        ? null
        : Amount.fromJson(json['amount'] as Map<String, dynamic>)
    ..paymentMode = json['payment_mode'] as String
    ..state = json['state'] as String
    ..reasonCode = json['reason_code'] as String
    ..pendingReason = json['pending_reason'] as String
    ..protectionEligibility = json['protection_eligibility'] as String
    ..protectionEligibilityType = json['protection_eligibility_type'] as String
    ..fmfDetails = json['fmf_details'] == null
        ? null
        : FmfDetails.fromJson(json['fmf_details'] as Map<String, dynamic>)
    ..parentPayment = json['parent_payment'] as String
    ..processorResponse = json['processor_response'] == null
        ? null
        : ProcessorResponse.fromJson(
            json['processor_response'] as Map<String, dynamic>)
    ..validUntil = json['valid_until'] == null
        ? null
        : DateTime.parse(json['valid_until'] as String)
    ..createTime = json['create_time'] == null
        ? null
        : DateTime.parse(json['create_time'] as String)
    ..updateTime = json['update_time'] == null
        ? null
        : DateTime.parse(json['update_time'] as String)
    ..receiptId = json['receipt_id'] as String
    ..links = (json['links'] as List)
        ?.map((e) => e == null
            ? null
            : LinkDescription.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$AuthorizationToJson(Authorization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'payment_mode': instance.paymentMode,
      'state': instance.state,
      'reason_code': instance.reasonCode,
      'pending_reason': instance.pendingReason,
      'protection_eligibility': instance.protectionEligibility,
      'protection_eligibility_type': instance.protectionEligibilityType,
      'fmf_details': instance.fmfDetails,
      'parent_payment': instance.parentPayment,
      'processor_response': instance.processorResponse,
      'valid_until': instance.validUntil?.toIso8601String(),
      'create_time': instance.createTime?.toIso8601String(),
      'update_time': instance.updateTime?.toIso8601String(),
      'receipt_id': instance.receiptId,
      'links': instance.links,
    };

Order _$OrderFromJson(Map<String, dynamic> json) {
  return Order()
    ..id = json['id'] as String
    ..amount = json['amount'] == null
        ? null
        : Amount.fromJson(json['amount'] as Map<String, dynamic>)
    ..paymentMode = json['payment_mode'] as String
    ..state = json['state'] as String
    ..reasonCode = json['reason_code'] as String
    ..pendingReason = json['pending_reason'] as String
    ..protectionEligibility = json['protection_eligibility'] as String
    ..protectionEligibilityType = json['protection_eligibility_type'] as String
    ..parentPayment = json['parent_payment'] as String
    ..fmfDetails = json['fmf_details'] == null
        ? null
        : FmfDetails.fromJson(json['fmf_details'] as Map<String, dynamic>)
    ..createTime = json['create_time'] == null
        ? null
        : DateTime.parse(json['create_time'] as String)
    ..updateTime = json['update_time'] == null
        ? null
        : DateTime.parse(json['update_time'] as String)
    ..links = (json['links'] as List)
        ?.map((e) => e == null
            ? null
            : LinkDescription.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'payment_mode': instance.paymentMode,
      'state': instance.state,
      'reason_code': instance.reasonCode,
      'pending_reason': instance.pendingReason,
      'protection_eligibility': instance.protectionEligibility,
      'protection_eligibility_type': instance.protectionEligibilityType,
      'parent_payment': instance.parentPayment,
      'fmf_details': instance.fmfDetails,
      'create_time': instance.createTime?.toIso8601String(),
      'update_time': instance.updateTime?.toIso8601String(),
      'links': instance.links,
    };

Capture _$CaptureFromJson(Map<String, dynamic> json) {
  return Capture()
    ..id = json['id'] as String
    ..amount = json['amount'] == null
        ? null
        : Amount.fromJson(json['amount'] as Map<String, dynamic>)
    ..isFinalCapture = json['is_final_capture'] as bool
    ..state = json['state'] as String
    ..reasonCode = json['reason_code'] as String
    ..parentPayment = json['parent_payment'] as String
    ..invoiceNumber = json['invoice_number'] as String
    ..transactionFee = json['transaction_fee'] == null
        ? null
        : Currency.fromJson(json['transaction_fee'] as Map<String, dynamic>)
    ..receivableAmount = json['receivable_amount'] == null
        ? null
        : Currency.fromJson(json['receivable_amount'] as Map<String, dynamic>)
    ..exchangeRate = json['exchange_rate'] as String
    ..noteToPlayer = json['note_to_player'] as String
    ..createTime = json['create_time'] == null
        ? null
        : DateTime.parse(json['create_time'] as String)
    ..updateTime = json['update_time'] == null
        ? null
        : DateTime.parse(json['update_time'] as String)
    ..links = (json['links'] as List)
        ?.map((e) => e == null
            ? null
            : LinkDescription.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$CaptureToJson(Capture instance) => <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'is_final_capture': instance.isFinalCapture,
      'state': instance.state,
      'reason_code': instance.reasonCode,
      'parent_payment': instance.parentPayment,
      'invoice_number': instance.invoiceNumber,
      'transaction_fee': instance.transactionFee,
      'receivable_amount': instance.receivableAmount,
      'exchange_rate': instance.exchangeRate,
      'note_to_player': instance.noteToPlayer,
      'create_time': instance.createTime?.toIso8601String(),
      'update_time': instance.updateTime?.toIso8601String(),
      'links': instance.links,
    };

Refund _$RefundFromJson(Map<String, dynamic> json) {
  return Refund()
    ..id = json['id'] as String
    ..amount = json['amount'] == null
        ? null
        : Amount.fromJson(json['amount'] as Map<String, dynamic>)
    ..state = json['state'] as String
    ..reason = json['reason'] as String
    ..invoiceNumber = json['invoice_number'] as String
    ..saleId = json['sale_id'] as String
    ..captureId = json['capture_id'] as String
    ..parentPayment = json['parent_payment'] as String
    ..description = json['description'] as String
    ..createTime = json['create_time'] == null
        ? null
        : DateTime.parse(json['create_time'] as String)
    ..updateTime = json['update_time'] == null
        ? null
        : DateTime.parse(json['update_time'] as String)
    ..links = (json['links'] as List)
        ?.map((e) => e == null
            ? null
            : LinkDescription.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$RefundToJson(Refund instance) => <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'state': instance.state,
      'reason': instance.reason,
      'invoice_number': instance.invoiceNumber,
      'sale_id': instance.saleId,
      'capture_id': instance.captureId,
      'parent_payment': instance.parentPayment,
      'description': instance.description,
      'create_time': instance.createTime?.toIso8601String(),
      'update_time': instance.updateTime?.toIso8601String(),
      'links': instance.links,
    };

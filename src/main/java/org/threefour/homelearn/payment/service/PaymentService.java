package org.threefour.homelearn.payment.service;

import org.threefour.homelearn.payment.domain.Payment;
import org.threefour.homelearn.payment.domain.PaymentRequest;

public interface PaymentService {
  //void cancelPaymentOnPortOne(String impUid, int cancel_amount, String accessToken);

  Payment verifyPayment(PaymentRequest paymentRequest) throws Exception;
  void cancelPayment(PaymentRequest paymentRequest) throws Exception;
  void savePayment(Payment payment);
  Payment getPaymentByImpUid(String imp_uid);
}

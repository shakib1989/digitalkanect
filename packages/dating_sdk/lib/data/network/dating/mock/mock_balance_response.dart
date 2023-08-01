part of 'mock_dating_responses.dart';

extension MockBalanceResponse on MockDatingResponse {
  GetBalanceResponse balance() {
    return GetBalanceResponse(
      data: BalanceModel(
        messages: 500,
        phoneCallInSec: 20 + (60 * 56) + (360 * 1),
        videoCallInSec: 20 + (60 * 56) + (360 * 1),
      ),
    );
  }
}

part of 'mock_dating_responses.dart';

extension MockMatchedUserListResponse on MockDatingResponse {
  GetMatchedUserListResponse matchedUserList() {
    return GetMatchedUserListResponse(
      list: [
        MatchedUserModel(
          id: '1',
          name: 'Sahara',
          imageUrl: 'https://qph.cf2.quoracdn.net/main-qimg-2c9e9107e5457b810a85f397417480b6-lq',
          thumbnailUrl: 'https://qph.cf2.quoracdn.net/main-qimg-2c9e9107e5457b810a85f397417480b6-lq',
          online: true,
          favorite: true,
        ),
        MatchedUserModel(
          id: '2',
          name: 'Laila',
          imageUrl: 'https://qph.cf2.quoracdn.net/main-qimg-2c9e9107e5457b810a85f397417480b6-lq',
          thumbnailUrl: 'https://qph.cf2.quoracdn.net/main-qimg-2c9e9107e5457b810a85f397417480b6-lq',
          online: false,
          favorite: false,
        ),
      ],
    );
  }
}

class AllMutaion {
  static String signUpUser({required String uid, required String name}) {
    return '''
    mutation MyMutation {
    insert_users_one(object: {RTU: "12345", bio: "test", country_code: "test", email: "test", name: "test", phone: "123", role: USER}) {
    id
  }
  }
''';
  }


  static String QrEnter({required String uid, required var in_time ,required String state}) {
    return '''
   mutation MyMutation {
   update_requests_by_pk(
   pk_columns: {id: ${uid}}
     _set: {  
     in_time : "$in_time"
     state : "${state}"
     }
   ) {
    
    in_time
    state
  }
}
''';
  }

  static String QrExit({required String uid, required var out_time,required String state}) {
    return '''
   mutation MyMutation {
   update_requests_by_pk(pk_columns: {id: ${uid}}
      _set: {  
     out_time : "$out_time"
     state : "${state}"
     }
   ) {
    out_time
   state
  }
}
''';
  }

//   static String insertRequest(
//       {required int warehouse_id,
//       required int user_id,
//       required String updated_at,
//       required String type,
//       required String event_time,
//       required String created_at,
//       required bool approved}) {
//     return '''
//     mutation MyMutation {
//   insert_requests(objects: {warehouse_id: $warehouse_id, user_id: $user_id, updated_at: $updated_at, type: $type , event_time: $event_time, created_at: $event_time, approved: $approved}) {
//     returning {
//       id
//     }
//   }
// }
// ''';
//   }

  static String insertRequest({
    required int warehouse_id,
  }) {
    return '''
    mutation MyMutation {
  insert_requests_one(object: {state: "genrated", user_id: 1, warehouse_id: $warehouse_id}) {
    id
  }
}
''';
  }

  static String updateEmail({required String uid, required String email}) {
    return '''
    mutation MyMutation {
    update_user_by_pk(
    pk_columns: {id: "$uid"}
    _set: { email: "$email" }
    ){
    email
  }}
''';
  }
}

class AllSubscription {
  static String listenRequestById({required int id}) {
    return '''
    subscription MySubscription {
  requests(where: {id: {_eq: $id}}) {
    id
    approved
    created_at
    event_time
    type
    updated_at
    user_id
    warehouse_id
  }
}
''';
  }
}

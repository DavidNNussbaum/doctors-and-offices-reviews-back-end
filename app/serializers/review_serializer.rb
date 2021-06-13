class ReviewSerializer
  include JSONAPI::Serializer
  attributes :doctor_rating, :doctor_comments, :doctor_office_rating, :doctor_office_comments, :doctor_id, :user_id, :id

end
 
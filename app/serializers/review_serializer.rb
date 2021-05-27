class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :doctor_rating, :doctor_comments, :doctor_office_rating, :doctor_office_comments, :doctor_id, :user_id

end
 
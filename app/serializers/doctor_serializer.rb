class DoctorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :address

  def reviews
    self.object.reviews.map do |r|
      {
        doctor_rating: r.doctor_rating,
        doctor_comments: r.doctor_comments,
        doctor_office_rating: r.doctor_office_rating,
        doctor_office_comments: r.doctor_office_comments
        doctor_id: r.doctor_id
        user_id: r.user_id
      }
    end
  end
end
 


class DoctorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :address

  attribute :name do |user|
    "#{user.first_name} #{user.last_name}"
  end

  def reviews
    self.object.reviews.map do |r|
      {
        doctor_rating: r.doctor_rating,
        doctor_comments: r.doctor_comments,
        doctor_office_rating: r.doctor_office_rating,
        doctor_office_comments: r.doctor_office_comments,
        doctor_id: r.doctor_id,
        user_id: r.user_id,
        id: r.id
      }
    end
  end
end
 


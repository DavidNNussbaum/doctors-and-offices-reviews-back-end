class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :email, :id

  def doctors
    self.object.doctors.map do |u|
      {
        first_name: u.doctor_id.first_name,
        last_name: u.doctor_id.last_name,
        address: u.doctor_id.address,
        doctor_id: r.doctor_id,
      }
    end
  end
end

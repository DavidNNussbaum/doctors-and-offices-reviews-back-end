class UserSerializer
  include JSONAPI::Serializer
  attributes :first_name, :id, :doctors

  def doctors
    self.object.doctors.map do |d|
      {
        first_name: d.first_name,
        last_name: d.last_name,
        address: d.address,
        id: d.id,
      }
    end
  end
end

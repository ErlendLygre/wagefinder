class RegistrationsController < Devise::RegistrationsController
  def create
    super do
      User.create(registration_id: resource.id)
    end
  end
end

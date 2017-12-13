class RegistrationsController < Devise::RegistrationsController
  def create
    super do
      User.create(registration_id: resource.id)
    end
  end

  protected

  def after_sign_up_path_for(resource)
    new_wage_path
  end
end

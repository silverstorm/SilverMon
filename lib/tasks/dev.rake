if Rails.env.development?
  namespace :dev do
    task data: :environment do
      user = User.find_or_initialize_by(
        username: 'Testuser'
      )
      user.update(
        password: 'ChangeMe123!!',
        email: 'no-one@example.org'
      )
      user.confirm

    end
  end
end

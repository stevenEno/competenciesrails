json.extract! internship, :id, :name, :company, :industry, :description, :start_date, :end_date, :application_link, :contact, :avatar, :created_at, :updated_at
json.url internship_url(internship, format: :json)
json.avatar url_for(internship.avatar)

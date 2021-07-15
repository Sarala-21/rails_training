json.extract! profiledetail, :id, :first_name, :last_name, :education, :experience, :resume, :created_at, :updated_at
json.url profiledetail_url(profiledetail, format: :json)

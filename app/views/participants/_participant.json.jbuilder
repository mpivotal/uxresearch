json.extract! participant, :id, :first_name, :last_name, :email, :company, :location, :job_title, :created_at, :updated_at
json.url participant_url(participant, format: :json)
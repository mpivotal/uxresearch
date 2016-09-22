namespace :participants do
  desc "TODO"
  task csv: :environment do
    require 'csv'
    @participants = Participant.all
    attributes = %w{id email first_name last_name company location job_title}

    csv_string = CSV.generate(headers: true) do |csv|
      csv << attributes
      @participants.each do |participant|
        csv << attributes.map{ |attr| participant.send(attr) }
      end
    end
    file = File.open("public/#{SecureRandom.hex}-participants.csv", "w")
    print file.path
    file.write(csv_string)
    file.close
  end

end

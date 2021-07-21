class CsvImporterWorker
  require 'csv'
  include Sidekiq::Worker
  sidekiq_options retry: true

  def perform(user, csv_file)
    headers =  CSV.open(csv_file, &:readline)
    @fields = headers[0].split(";")
    CSV.foreach(csv_file, headers: true) do |contact|
      current_user.contacts.create(
        name: contact[0],
        birth: contact[1],
        phone: contact[2],
        address: contact[3],
        credit_card: contact[4],
        franchise: contact[5],
        email: contact[6],
      )
    end
  end
end
# == Schema Information
#
# Table name: contacts
#
#  id          :bigint           not null, primary key
#  name        :text
#  birth       :date
#  phone       :text
#  address     :text
#  credit_card :text
#  franchise   :text
#  email       :text
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
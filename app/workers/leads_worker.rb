<<<<<<< HEAD
class LeadsWorker
    require 'csv'
    include Sidekiq::Worker

    def perform(leads_file)
        CSV.foreach(leads_file, headers: true) do |lead|
            Customer.create(email: lead[0], first_name: lead[1], last_name: lead[2])
        end
    end 
end 
=======
require 'csv'

class LeadsWorker
  include Sidekiq::Worker

  def perform(leads_file)
    CSV.foreach(leads_file, headers: true) do |lead|
      Customer.create(email: lead[0], first_name: lead[1], last_name: lead[2])
    end
  end

end
>>>>>>> 7819c3f3b2da452e6db1e50536104ee668072b96

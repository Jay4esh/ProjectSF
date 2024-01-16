require 'faker'

namespace :business_partner do
 desc 'This are the business partners present'

 task add_business_partner: :environment do 

    # business_partners = BusinessPartner.create(
    #     customer_code: "EMP0776",
    #     customer_name: "Krutika",
    #     corporate_number: 1348,
    #     invoice_number: 7653,
    #     postal_code: 41068,
    #     address: "Kashmir",
    #     telephone_number: 1682533333,
    #     )

    10.times do
        customer_code = Faker::Alphanumeric.alpha(number: 10)
        customer_name = Faker::Name.unique.name
        corporate_number = rand(300..3000)
        invoice_number = rand(1000..99999)
        postal_code = rand(1..10000)
        address = Faker::Address.unique.full_address
        telephone_number = Faker::PhoneNumber.unique.phone_number
        BusinessPartner.create!(customer_code:customer_code, customer_name:customer_name, corporate_number:corporate_number, invoice_number:invoice_number, postal_code:postal_code, address:address, telephone_number:telephone_number)
        end
        
  
    # puts "u are our #{business_partners}"

 end

end

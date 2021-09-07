# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    

    def parse     
        # if @email_addresses =~ /(\,\s)/ #contains comma and space
        #     @email_addresses.split(", ")
        # elsif @email_addresses =~ /(\s)/
        #     @email_addresses.split(" ")
        # end
        new_array = []
        split_emails = @email_addresses.split(" ")
        split_emails.map do |email|
            p email
            if email.include?(",")
                # p "found one!"
                email.tr(',', '')
                if new_array.include?(email.tr(',', ''))
                else
                    new_array << email.tr(',', '')
                end
            else 
                if new_array.include?(email)
                else
                    new_array << email
                end
            end
        end
        return new_array
    end

end

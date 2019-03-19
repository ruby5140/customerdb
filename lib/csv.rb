require 'csv'

module File::Csv
  HEADER_DIFINITIONS = {
    hello_world: %i( company, vdc, contractdate, server, monitoring, cancellationdate, product, level, link, auth, ipadd, root, vdc2, link2, auth2, ipadd2, root2, vdc3, sheet, deliverytime, day, company2, departmentname, name, email, phone, company3, departmentname2, name2, email2, phone2, company4, departmentname3, name3, email3, phone3, remark )
    }.freeze
  class << self
    def export(key, data)
      headers = HEADER_DIFINITIONS[key]
      CSV.generate do |csv|
        csv << headers
        data.each{|res|
          res = res.with_indifferent_access if res.is_a?(Hash)
          csv << headers.map {|k| res[k] }
        }
      end
    end
  end
end

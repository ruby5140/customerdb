require 'csv'
 
CSV.generate do |csv|
  csv_column_names = ["会社名","電話番号","サーバ","備考"]
  csv << csv_column_names
  @customers.each do |customer|
    csv_column_values = [
      customer.company,
      customer.phone,
      customer.server,
      customer.remark
    ]
    csv << csv_column_values
  end
end
require 'csv'

logger.debug @customers.inspect

CSV.generate(encoding: Encoding::SJIS) do |csv|
  csv_column_names = ["会社名","識別子","契約日","監視プロダクト","監視方法","解約日","利用サービス","対応レベル","監視設定シート","監視提供時間","曜日","会社名1","部署名1","氏名1","Email1","電話番号1","会社名2","部署名2","氏名2","Email2","電話番号2","会社名3","部署名3","氏名3","Email3","電話番号3","備考"]
  csv << csv_column_names
  @customers.each do |customer|
    csv_column_values = [
      customer.company,
      customer.vdc,
      customer.contractdate,
      customer.server,
      customer.monitoring,
      customer.cancellationdate,
      customer.product,
      customer.level,
      customer.sheet,
      customer.deliverytime,
      customer.day,
      
      customer.company2,
      customer.departmentname,
      customer.name,
      customer.email,
      customer.phone,
      
      customer.company3,
      customer.departmentname2,    
      customer.name2,
      customer.email2,
      customer.phone2,
      
      customer.company4,
      customer.departmentname3,
      customer.name3,      
      customer.email3,
      customer.phone3,






      customer.remark
    ]
    csv << csv_column_values
  end
end
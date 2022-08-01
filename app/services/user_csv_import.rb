require 'csv'
class UserCsvImport
  def call(file)
    CSV.foreach(file.path, headers: true, col_sep: ';') do |row|
      hash = {}
      hash[:name] = row['Name']
      hash[:phone] = row['Number']
      hash[:description] = row['Description']
      hash[:black_list] = false

      User.find_or_create_by!(hash)

      # binding.b
    end
  end
end

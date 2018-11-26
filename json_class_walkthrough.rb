require 'json'
require 'date'
class ParseJson
  attr_accessor :json_file

  def initialize(json_file)
      @json_file = JSON.parse(File.read(json_file))
  end
  def get_base
    #returns the base
    json_file["base"]
  end
  def get_date
    date_string = json_file["date"]
    y, m, d = date_string.split '-'
    Date.valid_date? y.to_i, m.to_i, d.to_i
  end
  def get_length
    json_file["rates"].count
  end
  def get_upcase
    json_file["rates"]
  end
  def get_length_array
    json_file["rates"].count
  end

end

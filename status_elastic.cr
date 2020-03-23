require "http/client"
require "colorize"

loop do
  response = HTTP::Client.get "http://192.168.143.95:9200/_cat/indices"

  if response.status_code == 200
    response.body.each_line do |line|
      split_line = line.split(' ', remove_empty: true)
      status = ""
      case split_line[0]
      when "yellow"
        status = "Warning!".colorize(:yellow)
      when "green"
        status = "Good".colorize(:green)
      end

      indice_name = split_line[2].gsub(/([0-9])/, "").gsub(/\_/, " ")

      if split_line[8] == split_line[9]
        idicated_name = split_line[8].colorize(:green)
      else
        idicated_name = split_line[8].colorize(:red)
      end

      puts "
      SIZE: #{status}
      STAUTS: #{split_line[1]}
      NAME INDICE: #{indice_name}
      SIZE: #{idicated_name} of #{split_line[9].colorize(:green)} \n\n"
    end
  else
    puts "Não foi possível obter os uma resposta"
  end
  puts "Data da ultima atualização => #{Time.local}"
  sleep(120)
end

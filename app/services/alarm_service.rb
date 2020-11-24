require 'line/bot'

class AlarmService
  def client
    @client ||= Line::Bot::Client.new do |config|
      config.channel_secret = '35eff1d044ad00b25d8bf50d82a37881'
      config.channel_token = 'xrMNWeNEHrudvKxo/p7kDPDd7xGOL3kDN3wqhb51nkJSIiJ5wDqHkylNQmyyxudyG1lVPK3pTPuMqGh/pmkqAkTwwGcoEbZDPbOthDgojbA+zBvyFQf0FD30w9ldifRWZfW4SOfAyy2jzHMjnuhDfgdB04t89/1O/w1cDnyilFU='
    end
  end

  def run
    message = {
      type: "text",
      text: "現在時間：#{Time.current} 趕快起床吧"
    }
    client.push_message('Ube5be72e9e2199e52dff81d659932a7f', message)
  end
end
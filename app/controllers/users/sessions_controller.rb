require 'net/http'

class Users::SessionsController < Devise::SessionsController

  def destroy
    url = URI.parse("http://localhost:4000/users/deauthorize?remote_user_id=#{current_user.id}")
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }

    super
  end

end

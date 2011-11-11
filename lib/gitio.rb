require "net/http"
require "gitio/version"

module GitIO
  SERVICE_URL = "http://git.io/"
  
  def self.shrink(url, options = {})
    raise "You must specifiy a URL to shrink!" if url.nil?
    
    post_params = { url: url }
    post_params[:code] = options[:name] unless options[:name].nil?
    
    response = Net::HTTP.post_form(URI.parse(SERVICE_URL), post_parms)
    
    case response
    when Net::HTTPCreated then
      return response['location']
    else
      return nil
    end
  end
  
end

class Base::Uri < ApplicationRecord
  def uri
    raise 'Missing url' unless url
    return @uri if @uri
    @uri = URI.parse(url)
    if @uri.try(:scheme).nil?
      url = "http://#{uri.to_s}"
      @uri = URI.parse(url)
    end
    @uri
  end

  def md5
    Digest::MD5.hexdigest(uri.to_s)
  end

  def name
    host.split('.').first
  end

  def host
    return @host if @host
    host = uri.host.downcase
    begin
      @host = host.split(/\./)[1] + '.' + host.split(/\./)[2]
    rescue
      @host = host.start_with?('www.') ? host[4..-1] : host
    end
  end
end

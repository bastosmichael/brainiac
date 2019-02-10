class Base::Uri < ApplicationRecord
  self.primary_key = "id"  
  has_one :page

  before_save :find_id

  def uri
    raise 'Missing url' unless url
    return @uri if @uri
    @uri = self.clean_url
  end

  def find_id
    self.id ||= Digest::MD5.hexdigest(uri.to_s)
  end

  def clean_url
    uri = URI.parse(url)
    if uri.scheme.nil?
      self.url = "http://#{uri.to_s}"
      uri = URI.parse(url)
    end
    uri
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

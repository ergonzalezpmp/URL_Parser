class UrlParser
  attr_accessor :scheme, :domain, :port, :path, :fragment_id

    def initialize(url)
      uri = URI::parse(url)
      @scheme = uri.scheme
      @domain = uri.host
      @port = uri.port.to_s
      @path = uri.path.tr("/", "") unless uri.path == "/"
      @query_string = uri.query
      @fragment_id = uri.fragment


      def query_string
        URI.decode_www_form(@query_string).to_h
      end

    end
end

# pars = UrlParser.new "http://www.google.com:60/search?q=cat&name=Tim#img=FunnyCat"
# p pars.query_string


 # ["http", nil, "www.google.com", "60", nil, "/search", nil, "q=cat&name=Tim", "img=FunnyCat"]

class SearchController < ApplicationController
  def index
    generalSearchInput = params[:generalSearchInput]

    conn = Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.headers["X-API-KEY"] = "PiKCHViVcXI9PSCZKGjHTA3Fn19MzuTR1riCCWtm"
    end

    response = conn.get()

    json = JSON.parse(response.body, symbolize_names: true)
    @ingredients = json[:results]
  end
end

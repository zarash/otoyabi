class SearchAdsController < ApplicationController
  def index
  	@search_ad = SearchAd.new(params[:search_ad])
  	@ads =  @search_ad.ads
  end
end

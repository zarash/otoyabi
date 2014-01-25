class SearchAdsController < ApplicationController
	load_and_authorize_resource
  def index
  	@search_ad = SearchAd.new(params[:search_ad])
  	@ads = @search_ad.ads.paginate( :per_page => 3,:page => params[:page]).order('created_at DESC')
  end
end

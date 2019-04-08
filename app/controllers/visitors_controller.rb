class VisitorsController < ApplicationController
	  access user: :all, site_admin: :all
  def index
  end
end

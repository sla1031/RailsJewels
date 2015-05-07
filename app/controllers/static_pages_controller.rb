class StaticPagesController < ApplicationController
  def home
        @store = Store.find(1)
        @body_id = "static"
  end
end

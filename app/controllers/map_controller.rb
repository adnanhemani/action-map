class MapController < ApplicationController
  def index
    @map = params[:map] || ""
    @states = State.get_states_with_activity(@map)
  end

  def state
    states_id = State.where(symbol: params[:state]).first.id
    @map = params[:map] || ""
    @counties = County.get_counties_in_state(states_id)
    @counties = County.get_counties_with_activity(@counties, @map)
    render "map/#{params[:state].downcase}"
  end
end

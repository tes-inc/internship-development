require 'net/https'


class SearchesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def result
    @result = JSON.parse(File.read(session[:result]))
    @name = params[:name]
    @year = params[:year]
    @month = params[:month]
    @day = params[:day]
    @sex = params[:sex]
    @favorite = Favorite.new

    @URL = "result?day=#{@day}&month=#{@month}&sex=#{@sex}&year=#{@year}"

  end

  def diagnosis
    year = params['search']['year']
    month = params['search']['month']
    day = params['search']['day']
    sex = params['search']['sex']
    key = ENV['API_KEY']
    api_path = "http://b-karte.biz/api/karte/diagnosis_result?year=#{year}&month=#{month}&day=#{day}&sex=#{sex}&key=#{key}&format=json"

    uri = URI.parse(api_path)
    json = Net::HTTP.get(uri)

    if [year,month,day,sex].all? { |item| item.present? } then

      path = Rails.root.join('tmp', 'cache', "#{year}#{month}#{day}#{sex}.json")
      unless File.exists?(path) then
        File.open(path, 'w+') { |f| f.write(json) }
      end

      session[:result] = path
      redirect_to action: :result, year: year, month: month, day: day, sex: sex
    else
      redirect_to root_path
    end

  end

  def create
    
    @favorite = Favorite.new(
      user_id: current_user.id,
      name: params.to_unsafe_h['favorite']['name'],
      year: params.to_unsafe_h['favorite']['year'],
      month: params.to_unsafe_h['favorite']['month'],
      day: params.to_unsafe_h['favorite']['day'],
      sex: params.to_unsafe_h['favorite']['sex'])

      if @favorite.save
        redirect_to root_path
      else
        redirect_to action: :result
      end
  end
end

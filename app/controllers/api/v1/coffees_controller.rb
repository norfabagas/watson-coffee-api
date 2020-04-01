class Api::V1::CoffeesController < ApplicationController
  def index
    coffees = Coffee.all
    render :json => coffees
  end

  def menu
    menu = {}
    Coffee.all.each do |val|
      menu[val.name.parameterize.underscore] = val.price
    end

    # beverages price
    coffee = 10
    cappuccino = 15
    latte =12

    # count the quantity
    if params[:quantity].nil?
      quantity = 1
    else
      quantity = params[:quantity].to_i
    end

    # parameters query
    if params[:get] == 'show_menu'
      beverage_menu = ""
      coffees = Coffee.all
      coffees.each do |val, index|
        beverage_menu += val.name
        beverage_menu += ", "
      end
      response = {
        :menu => beverage_menu.strip
      }
    elsif params[:get] == 'show_price'
      if menu[params[:for].parameterize.underscore]
        response = {:price => menu[params[:for].parameterize.underscore] * quantity, :quantity => quantity}
      else
        response = {:price => 0}
      end
    end

    render :json  => response
  end

  private
  def deparametrize(str)
    str.split("_").join(" ").humanize
  end
end

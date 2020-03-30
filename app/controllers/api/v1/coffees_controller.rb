class Api::V1::CoffeesController < ApplicationController
  def menu
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
      response = {
        :menu => "Coffee, latte, and Cappuccino"
      }
    elsif params[:get] == 'show_price'
      case params[:for].downcase
      when 'coffee'
        response = {:price => coffee * quantity, :quantity => quantity}
      when 'cappuccino'
        response = {:price => cappuccino * quantity, :quantity => quantity}
      when 'latte'
        response = {:price => latte * quantity, :quantity => quantity}
      else
        response = {:price => 0}
      end
    end

    render :json  => response
  end
end

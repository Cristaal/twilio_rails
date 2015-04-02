class PagesController < ApplicationController
  include HighVoltage::StaticPage

  def directory
    @messages = Message.all
  end
end

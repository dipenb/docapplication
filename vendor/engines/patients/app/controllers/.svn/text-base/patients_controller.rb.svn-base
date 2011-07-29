class PatientsController < ApplicationController

  before_filter :find_all_patients
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @patient in the line below:
    present(@page)
  end

  def show
    @patient = Patient.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @patient in the line below:
    present(@page)
  end

protected

  def find_all_patients
    @patients = Patient.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/patients").first
  end

end

require 'rails_helper'

RSpec.describe "franquias/show", type: :view do
  before(:each) do
    @franquia = assign(:franquia, Franquia.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

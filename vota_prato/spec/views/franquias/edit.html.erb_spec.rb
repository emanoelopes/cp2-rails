require 'rails_helper'

RSpec.describe "franquias/edit", type: :view do
  before(:each) do
    @franquia = assign(:franquia, Franquia.create!())
  end

  it "renders the edit franquia form" do
    render

    assert_select "form[action=?][method=?]", franquia_path(@franquia), "post" do
    end
  end
end

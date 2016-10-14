require 'rails_helper'

RSpec.describe "franquias/new", type: :view do
  before(:each) do
    assign(:franquia, Franquia.new())
  end

  it "renders new franquia form" do
    render

    assert_select "form[action=?][method=?]", franquias_path, "post" do
    end
  end
end

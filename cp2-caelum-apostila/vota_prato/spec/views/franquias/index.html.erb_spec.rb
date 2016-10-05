require 'rails_helper'

RSpec.describe "franquias/index", type: :view do
  before(:each) do
    assign(:franquias, [
      Franquia.create!(),
      Franquia.create!()
    ])
  end

  it "renders a list of franquias" do
    render
  end
end

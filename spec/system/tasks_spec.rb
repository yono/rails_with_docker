require 'rails_helper'

RSpec.describe "Tasks", js: true do
  before { visit tasks_path }

  it "has Title" do
    expect(page).to have_content "Tasks#index"
  end

  it "has hidden Form" do
    expect(page).to have_button "show Form"
    expect(page).not_to have_button "hide Form"
  end

  it "show Form by click button" do
    click_button "show Form"

    expect(page).to have_content "New Task"
    expect(page).to have_button "hide Form"
  end
end

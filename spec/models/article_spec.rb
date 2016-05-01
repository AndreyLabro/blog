require 'spec_helper'

RSpec.describe Article, type: :model do
  describe "associations" do
    it { should have_many :comments }
  end
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end
end